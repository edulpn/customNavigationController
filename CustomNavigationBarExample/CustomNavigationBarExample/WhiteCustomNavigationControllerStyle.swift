//
//  WhiteCustomNavigationControllerStyle.swift
//  CustomNavigationBarExample
//
//  Created by Eduardo Pinto on 03/08/17.
//  Copyright © 2017 Eduardo Pinto. All rights reserved.
//

import UIKit

struct WhiteCustomNavigationControllerStyle: CustomNavigationControllerStyle {
    var barTintColor: UIColor? = .white
    var tintColor: UIColor = .blue
    var titleTextAttributes: [String : Any]? = [NSForegroundColorAttributeName: UIColor.blue]
    var backgroundImage: UIImage? = nil
    var isBarHidden: Bool = false
    var isTranslucent: Bool = false
    var shadowImage: UIImage? = nil
    var statusBarStyle: UIStatusBarStyle = .default
    var shouldAnimateStyleChanges: Bool = true
}
