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
    
    @IBOutlet var presetNameLabel: UILabel!
    @IBOutlet var curveNameLabel: UILabel!
    @IBOutlet var forceValueLabel: UILabel!
    @IBOutlet var durationValueLabel: UILabel!
    @IBOutlet var delayValueLabel: UILabel!
    
    private var randomAnimation = Animation.randomAnimation
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabels()
    }

    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        applyAnimation()
        springAnimationView.animateNext { [unowned self] in
            applyAnimation()
            randomAnimation = Animation.randomAnimation
            sender.setTitle("Run \(randomAnimation.preset)", for: .normal)
        }
        
        
    }
    
    private func applyAnimation() {
        presetNameLabel.text = randomAnimation.preset
        curveNameLabel.text = randomAnimation.curve
        forceValueLabel.text = String(format: "%.2f", randomAnimation.force)
        durationValueLabel.text = String(format: "%.2f", randomAnimation.duration)
        delayValueLabel.text = String(format: "%.2f", randomAnimation.delay)
        springAnimationView.animation = randomAnimation.preset
        
        springAnimationView.animation = randomAnimation.preset
        springAnimationView.animate()
        
    }
    
    private func setupLabels() {
        presetNameLabel.text = randomAnimation.preset
        curveNameLabel.text = randomAnimation.curve
        forceValueLabel.text = String(format: "%.2f", randomAnimation.force)
        durationValueLabel.text = String(format: "%.2f", randomAnimation.duration)
        delayValueLabel.text = String(format: "%.2f", randomAnimation.delay)
    }
    
    
}

