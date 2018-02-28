//
//  ViewModel.swift
//  DesignPatterns-MvvmDemo
//
// The View Model class stands between the ViewController, and the data model. 
//  Created by floatingpoint on 2/27/18.
//  Copyright © 2018 HologramPacific. All rights reserved.
//

import Foundation

public class ViewModel {
    private var linearValue: Float = 0
    private let minimumLinearValue: Float = 0.0
    private let maximumLinearValue: Float = 1.0
    
    private var user: User = User()
    private var audioMath = AudioMath()
    
    var userName: String {
        get {
            return user.name
        }
    }
    var userEmail: String {
        get {
            return user.email
        }
    }
    public func setLinearValue(text: String?) -> String {
        if text == nil {
            return ""
        }
        if let value = try Float(text!) {
            var clamped = value
            if value < minimumLinearValue {
                clamped = minimumLinearValue
            } else if value > maximumLinearValue {
                clamped = maximumLinearValue
            }
            linearValue = clamped
            return String(clamped)
        } else {
            return ""
        }
    }
    
    public func convertLinearValue() -> String {
        var dbValue = audioMath.linearToDb(linearValue: linearValue)
        return String(dbValue) + " dB"
    }
    init() {}
}
