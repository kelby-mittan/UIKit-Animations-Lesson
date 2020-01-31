//
//  ConstraintsAnimationController.swift
//  UIKit-Animations
//
//  Created by Kelby Mittan on 1/31/20.
//  Copyright © 2020 Kelby Mittan. All rights reserved.
//

import UIKit

class ConstraintsAnimationController: UIViewController {

    @IBOutlet var viewYConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemIndigo
    }
    
    @IBAction func animateViewUp(_ sender: UIButton) {
        viewYConstraint.constant -= 100
        
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 5.0, options: [.curveEaseIn], animations: {
            
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    @IBAction func animateViewDown(_ sender: UIButton) {
        viewYConstraint.constant += 100
        
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 5.0, options: [.curveEaseIn], animations: {
            
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    
}
