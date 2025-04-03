//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Roman Dubovskoi on 4/1/25.
//

import UIKit
import SpringAnimation


final class ViewController: UIViewController {
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationLabel: SpringLabel! {
        didSet {
            animationLabel.text = randomAnimation.description
        }
    }
    
    
    private var randomAnimation = Animation.randomAnimation
    
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        animationLabel.animation = randomAnimation.preset
        animationLabel.animate()
        animationLabel.text = randomAnimation.description
        
        animationLabel.animateNext { [unowned self] in
            animationLabel.animation = randomAnimation.preset
            animationLabel.animate()
            
            springAnimationView.animation = randomAnimation.preset
            springAnimationView.curve = randomAnimation.curve
            springAnimationView.duration = randomAnimation.duration
            springAnimationView.force = randomAnimation.force
            springAnimationView.delay = randomAnimation.delay
            springAnimationView.animate()
            
            randomAnimation = Animation.randomAnimation
            sender.setTitle(randomAnimation.preset, for: .normal)
            
        }
        
        
        
    }
}
