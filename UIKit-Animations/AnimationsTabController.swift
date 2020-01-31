//
//  AnimationsTabController.swift
//  UIKit-Animations
//
//  Created by Kelby Mittan on 1/31/20.
//  Copyright © 2020 Kelby Mittan. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {

    private lazy var sampleAnimationsVC: SampleAnimationsController = {
        let viewController = SampleAnimationsController()
        viewController.tabBarItem = UITabBarItem(title: "Sample Animations", image: UIImage(systemName: "1.circle"), tag: 0)
        return viewController
    }()
    
    private lazy var constraintsAnimationVC: ConstraintsAnimationController = {
        
        let viewController = ConstraintsAnimationController()
//        viewController.tabBarItem = UITabBarItem(title: "Constraints Animations", image: UIImage(systemName: "2.circle"), tag: 1)
        
        // step 1: get instance of storyboard
        let constraintsAnimationStoryboard = UIStoryboard(name: "ConstraintsAnimation", bundle: nil)
        
        // step 2: instantiate view controller from storyboard instance
        guard let animationVC = constraintsAnimationStoryboard.instantiateViewController(identifier: "ConstraintsAnimationController") as? ConstraintsAnimationController else {
            fatalError("could not load controller")
        }
        
        animationVC.tabBarItem = UITabBarItem(title: "Constraints Animations", image: UIImage(systemName: "2.circle"), tag: 1)
        
        return animationVC
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // set viewcontrollers for the tab bar
        // in our app we will have two tabs
        
        viewControllers = [sampleAnimationsVC, constraintsAnimationVC]
    }
    

    

}
