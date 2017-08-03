//
//  ClearLightBackgroundCustomNavigationControllerStyle.swift
//  CustomNavigationBarExample
//
//  Created by Eduardo Pinto on 03/08/17.
//  Copyright © 2017 Eduardo Pinto. All rights reserved.
//

import UIKit

struct ClearLightBackgroundCustomNavigationControllerStyle: CustomNavigationControllerStyle {
    var barTintColor: UIColor? = .clear
    var tintColor: UIColor = .black
    var titleTextAttributes: [String : Any]? = [NSForegroundColorAttributeName: UIColor.black]
    var backgroundImage: UIImage? = UIImage()
    var isBarHidden: Bool = false
    var isTranslucent: Bool = true
    var shadowImage: UIImage? = UIImage()
    var statusBarStyle: UIStatusBarStyle = .default
    var shouldAnimateStyleChanges: Bool = true
}
