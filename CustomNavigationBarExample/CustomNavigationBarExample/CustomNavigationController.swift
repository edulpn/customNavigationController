//
//  CustomNavigationController.swift
//  CustomNavigationBarExample
//
//  Created by Eduardo Pinto on 03/08/17.
//  Copyright © 2017 Eduardo Pinto. All rights reserved.
//

import UIKit

protocol CustomNavigationControllerStyle {
    var isBarHidden: Bool {get}
    var statusBarStyle: UIStatusBarStyle {get}
    var barTintColor: UIColor? {get}
    var tintColor: UIColor {get}
    var shadowImage: UIImage? {get}
    var backgroundImage: UIImage? {get}
    var isTranslucent: Bool {get}
    var titleTextAttributes: [String: Any]? {get}
    var shouldAnimateStyleChanges: Bool {get}
}

protocol CustomNavigationControllerStylable {
    var customNavigationControllerStyle: CustomNavigationControllerStyle? {get}
}

class CustomNavigationController: UINavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if let stylableViewController = topViewController as? CustomNavigationControllerStylable, let style = stylableViewController.customNavigationControllerStyle {
            return style.statusBarStyle
        }
        return .default
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureStyle(for: topViewController)
    }
    
    override func setViewControllers(_ viewControllers: [UIViewController], animated: Bool) {
        super.setViewControllers(viewControllers, animated: animated)
        configureStyle(for: topViewController)
    }
    
    override func popViewController(animated: Bool) -> UIViewController? {
        let poppedViewController = super.popViewController(animated: animated)
        configureStyle(for: topViewController)
        return poppedViewController
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        configureStyle(for: topViewController)
    }
    
    override func popToRootViewController(animated: Bool) -> [UIViewController]? {
        let poppedViewControllers = super.popToRootViewController(animated: animated)
        configureStyle(for: topViewController)
        return poppedViewControllers
    }
    
    fileprivate func configureStyle(for viewController: UIViewController?) {
        if let stylableViewController = viewController as? CustomNavigationControllerStylable, let style = stylableViewController.customNavigationControllerStyle {
            setNavigationBarHidden(style.isBarHidden, animated: style.shouldAnimateStyleChanges)
            navigationBar.barTintColor = style.barTintColor
            navigationBar.tintColor = style.tintColor
            navigationBar.shadowImage = style.shadowImage
            navigationBar.setBackgroundImage(style.backgroundImage, for: .default)
            navigationBar.isTranslucent = style.isTranslucent
            navigationBar.titleTextAttributes = style.titleTextAttributes
            setNeedsStatusBarAppearanceUpdate()
        }
    }
}
