//
//  BlueNavigationBarViewController.swift
//  CustomNavigationBarExample
//
//  Created by Eduardo Pinto on 03/08/17.
//  Copyright © 2017 Eduardo Pinto. All rights reserved.
//

import UIKit

class BlueNavigationBarViewController: UIViewController, CustomNavigationControllerStylable {

    var customNavigationControllerStyle: CustomNavigationControllerStyle? = BlueCustomNavigationControllerStyle()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Blue Navigation Bar"
    }
}
