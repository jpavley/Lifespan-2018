//
//  LifeClock.swift
//  Lifespan 2018
//
//  Created by jpavley12 on 2/19/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import Foundation

/// Model of a 12 hour analog clock with hour, minute, and second hands.
/// The hour hand rotates 360 degrees in 720 minutes. 360/720 = 0.5 degrees/minute.
/// The minute hand rotates 360 degrees in 60 minutes. 360/60 = 6.0 degrees/minute.
/// The second hand rotates 360 degrees in 1 minute. 360/1 = 1.0 degrees/minute.
/// Equation for hour hand angle (degrees):   0.5 x ((60 x Hours) + Minutes).
/// Equation for minute hand angel (degrees): 6.0 x Minutes.
/// Equation for second hand angel (degrees): 1.0 x Minutes.
class LifeClock {
    
}
