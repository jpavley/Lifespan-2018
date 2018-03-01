//
//  UserProfile.swift
//  Lifespan 2018
//
//  Created by jpavley12 on 2/24/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import Foundation
import CoreGraphics

struct RangedValue {
    var min = 0.0
    var max = 1.0
    var setting = 0.5
}

class UserProfile {
    var name = "john"
    var dob = "02-13-1961"
    var ale = CGFloat(82.9) // https://www.ssa.gov/planners/lifeexpectancy.html
    var activity = 0.5
    var calories = 0.5
    var smoking = false
    var drinking = false
    
    var birthYear = RangedValue(min: 1900, max: 2020, setting: 1961)
    var lifeExpectancy = RangedValue(min: 0, max: 83, setting: 120)
    var activityLevel = RangedValue(min: 0, max: 10, setting: 5)
    var stressLevel = RangedValue(min: 0, max: 10, setting: 5)
}
