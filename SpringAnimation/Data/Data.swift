//
//  Data.swift
//  SpringAnimationApp
//
//  Created by Roman Dubovskoi on 4/1/25.
//

import SpringAnimation

final class Data {
    static let shared = Data()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
