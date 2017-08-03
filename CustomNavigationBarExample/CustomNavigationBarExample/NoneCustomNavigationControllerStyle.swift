//
//  NoneCustomNavigationControllerStyle.swift
//  CustomNavigationBarExample
//
//  Created by Eduardo Pinto on 03/08/17.
//  Copyright © 2017 Eduardo Pinto. All rights reserved.
//

import Foundation

import UIKit

struct NoneCustomNavigationControllerStyle: CustomNavigationControllerStyle {
    var barTintColor: UIColor? = .clear
    var tintColor: UIColor = .clear
    var titleTextAttributes: [String : Any]? = nil
    var backgroundImage: UIImage? = UIImage()
    var isBarHidden: Bool = true
    var isTranslucent: Bool = false
    var shadowImage: UIImage? = UIImage()
    var statusBarStyle: UIStatusBarStyle = .default
    var shouldAnimateStyleChanges: Bool = false
}
