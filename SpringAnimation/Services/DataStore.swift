//
//  Data.swift
//  SpringAnimationApp
//
//  Created by Roman Dubovskoi on 4/1/25.
//

import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
