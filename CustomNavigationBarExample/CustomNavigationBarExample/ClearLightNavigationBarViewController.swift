//
//  ClearLightNavigationBarViewController.swift
//  CustomNavigationBarExample
//
//  Created by Eduardo Pinto on 03/08/17.
//  Copyright © 2017 Eduardo Pinto. All rights reserved.
//

import UIKit

class ClearLightNavigationBarViewController: UIViewController, CustomNavigationControllerStylable {

    var customNavigationControllerStyle: CustomNavigationControllerStyle? = ClearLightBackgroundCustomNavigationControllerStyle()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Clear & Light Navigation Bar"
    }
}
