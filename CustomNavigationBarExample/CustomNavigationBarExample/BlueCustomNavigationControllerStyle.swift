//
//  BlueCustomNavigationControllerStyle.swift
//  CustomNavigationBarExample
//
//  Created by Eduardo Pinto on 03/08/17.
//  Copyright © 2017 Eduardo Pinto. All rights reserved.
//

import UIKit

struct BlueCustomNavigationControllerStyle: CustomNavigationControllerStyle {
    var barTintColor: UIColor? = .blue
    var tintColor: UIColor = .white
    var titleTextAttributes: [String : Any]? = [NSForegroundColorAttributeName: UIColor.white]
    var backgroundImage: UIImage? = nil
    var isBarHidden: Bool = false
    var isTranslucent: Bool = false
    var shadowImage: UIImage? = nil
    var statusBarStyle: UIStatusBarStyle = .lightContent
    var shouldAnimateStyleChanges: Bool = true
}
