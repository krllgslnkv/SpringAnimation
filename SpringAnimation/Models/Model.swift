//
//  Model.swift
//  SpringAnimation
//
//  Created by Kirill Guselnikov on 24.11.2021.
//

import Foundation

struct Animation {
    
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var valueAnimation: String {
                """
                    preset: \(preset)
                    curve: \(curve)
                    force: \(String(format: "%.2f", force))
                    duration: \(String(format: "%.2f", duration))
                    delay: \(String(format: "%.2f", delay))
                """
    }
    
    static func randomAnimation() -> Animation {
        Animation(preset: DataManager.shared.animation.randomElement()?.rawValue ?? "",
                  curve: DataManager.shared.curve.randomElement()?.rawValue ?? "",
                  force: Float.random(in: 1...2),
                  duration: Float.random(in: 1...2),
                  delay: Float.random(in: 0.1...0.5))
        
    }
}
