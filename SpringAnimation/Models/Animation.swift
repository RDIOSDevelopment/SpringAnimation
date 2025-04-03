//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Roman Dubovskoi on 4/1/25.
//

import Foundation

struct Animation: CustomStringConvertible {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "2.%f", force))
        duration: \(String(format: "2.%f", duration))
        delay: \(String(format: "2.%f", delay))
        """
    }
    
    static var randomAnimation: Animation {
        Animation(
            preset: DataStore.shared.animations.randomElement()?.rawValue ?? "",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 0.5...2),
            duration: Double.random(in: 0.5...2),
            delay: Double.random(in: 0.5...2)
        )
    }
    
}
