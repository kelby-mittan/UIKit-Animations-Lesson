//
//  SampleAnimationsController.swift
//  UIKit-Animations
//
//  Created by Kelby Mittan on 1/31/20.
//  Copyright © 2020 Kelby Mittan. All rights reserved.
//

import UIKit

class SampleAnimationsController: UIViewController {
    
    private let sampleAnimationsView = SampleAnimationView()
    
    override func loadView() {
        view = sampleAnimationsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
//        pulsatingAnimation()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        scaleAnimation()
    }
    
    private func scaleAnimation() {
      
      // properties we could animate
      /*
       - alpha
       - corner radius
       - position
       - center
       - transition
       - backgrounColor
       - shadow
       - opacity
       - tranform: scale, rotate, translate
      */
      
      // any transform value of 1.0 represents the identity of the view
      
      UIView.animate(withDuration: 0.3, delay: 0.0, options: [], animations: {
        self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 20.0, y: 20.0)
        self.sampleAnimationsView.pursuitLogo.alpha = 0.0
      }) { (done) in
        // gets called after initial animation is done
        UIView.animate(withDuration: 0.3) {
          self.sampleAnimationsView.swiftLogo.isHidden = false
          self.sampleAnimationsView.swiftLogo.layer.cornerRadius = self.sampleAnimationsView.swiftLogo.bounds.size.width / 2.0
        }
      }
    }
    
    private func pulsatingAnimation() {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [.repeat,.autoreverse], animations: {
            // animation block
            self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (done) in
            // code to be excecuted after animation is complete
            // options - you can reset views values
            // options - create another animation
            // if you want to go beyond creating an animation in this animation handler the better choice would be animateKeyFrames()
            
            UIView.animate(withDuration: 0.3) {
                self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform.identity
            }
        }
    }
    
    
}
