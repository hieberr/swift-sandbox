//
//  AudioMath.swift
//  DesignPatterns-MvvmDemo
//
//  Created by floatingpoint on 2/27/18.
//  Copyright © 2018 HologramPacific. All rights reserved.
//

import Foundation

public class AudioMath {
    public func linearToDb(linearValue: Float) -> Float {
        if linearValue != 0 {
            return 20.0 * log10(linearValue)
        } else {
            return -144.0
        }
    }
}
