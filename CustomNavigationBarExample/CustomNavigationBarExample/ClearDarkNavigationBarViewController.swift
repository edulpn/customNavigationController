//
//  ClearDarkNavigationBarViewController.swift
//  CustomNavigationBarExample
//
//  Created by Eduardo Pinto on 03/08/17.
//  Copyright © 2017 Eduardo Pinto. All rights reserved.
//

import UIKit

class ClearDarkNavigationBarViewController: UIViewController, CustomNavigationControllerStylable {

    var customNavigationControllerStyle: CustomNavigationControllerStyle? = ClearDarkBackgroundCustomNavigationControllerStyle()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Clear & Dark Navigation Bar"
    }
}
