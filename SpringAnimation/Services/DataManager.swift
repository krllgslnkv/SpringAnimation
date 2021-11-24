//
//  DataManager.swift
//  SpringAnimation
//
//  Created by Kirill Guselnikov on 24.11.2021.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let animation = Spring.AnimationPreset.allCases
    let curve = Spring.AnimationCurve.allCases
    
    private init() {}
}
