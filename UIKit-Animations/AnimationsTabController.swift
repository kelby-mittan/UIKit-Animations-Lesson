//
//  AnimationsTabController.swift
//  UIKit-Animations
//
//  Created by Kelby Mittan on 1/31/20.
//  Copyright © 2020 Kelby Mittan. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // set viewcontrollers for the tab bar
        // in our app we will have two tabs
        
        viewControllers = [SampleAnimationsController(), ConstraintsAnimationController()]
    }
    

    

}
