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
    var min:Float = 0.0
    var max:Float = 1.0
    var setting:Float = 0.5
}

/// Models a user of Lifespan.
/// A good source for life expentancy is // https://www.ssa.gov/planners/lifeexpectancy.html
class UserProfile {
    
    var name = "john"
    var birthYear = RangedValue(min: 1900, max: 2100, setting: 1961)
    var lifeExpectancy = RangedValue(min: 0, max: 120, setting: 83)
    var activityLevel = RangedValue(min: 0, max: 10, setting: 5)
    var stressLevel = RangedValue(min: 0, max: 10, setting: 5)
    
    var dob: String {
        get {
            return "02-13-\(Int(birthYear.setting))"
        }
    }
    
    var ale: CGFloat {
        get {
            return CGFloat(lifeExpectancy.setting)
        }
    }
    
    var activity: CGFloat {
        get {
            return CGFloat(activityLevel.setting)
        }
    }
    
    var stress: CGFloat {
        get {
            return CGFloat(stressLevel.setting)
        }
    }
}
