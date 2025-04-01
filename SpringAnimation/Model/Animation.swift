//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Roman Dubovskoi on 4/1/25.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static var randomAnimation: Animation {
        Animation(
            preset: Data.shared.animations.randomElement()?.rawValue ?? "",
            curve: Data.shared.curves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 0.5...2),
            duration: Double.random(in: 0.5...2),
            delay: Double.random(in: 0.5...2)
        )
    }
    
}
