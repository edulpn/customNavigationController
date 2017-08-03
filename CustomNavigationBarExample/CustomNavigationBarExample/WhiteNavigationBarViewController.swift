//
//  WhiteNavigationBarViewController.swift
//  CustomNavigationBarExample
//
//  Created by Eduardo Pinto on 03/08/17.
//  Copyright © 2017 Eduardo Pinto. All rights reserved.
//

import UIKit

class WhiteNavigationBarViewController: UIViewController, CustomNavigationControllerStylable {

    var customNavigationControllerStyle: CustomNavigationControllerStyle? = WhiteCustomNavigationControllerStyle()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "White Navigation Bar"
    }
}
