//
//  Lifespan.swift
//  Lifespan 2018
//
//  Created by John Pavley on 2/23/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import Foundation
import CoreGraphics

/// When we're only interested in the time components of the date
typealias Time = Date

struct LifeEvent {
    var title: String
    var description: String
    var date: Date
}

extension CGFloat {
    var divisor: CGFloat {
        return self.rounded(.down)
    }
    var remainder: CGFloat {
        return self - self.divisor
    }
}

class Lifespan {
    
    var name: String?
    var birth: LifeEvent?
    var death: LifeEvent?
    var lifeEvents: [Lifespan]?
    var averageLifeExpectancy: CGFloat?
    var spanModifiers: [String:CGFloat]?
    
    var hourHandValue = 0
    var minuteHandValue = 0
    var secondHandValue = 0
    
    var clockDescriptionRemaining: String {
        let hoursRemaining = 12 - hourHandValue
        let minutesRemaining = 60 - minuteHandValue
        let secondsRemaining = 60 - secondHandValue
        return "\(hoursRemaining) hours ✳︎ \(minutesRemaining) minutes ✳︎ \(secondsRemaining) seconds"
    }
    
    var clockDescriptionSpent: String {
        let hoursRemaining = hourHandValue
        let minutesRemaining = minuteHandValue
        let secondsRemaining = secondHandValue
        return "\(hoursRemaining) hours ✳︎ \(minutesRemaining) minutes ✳︎ \(secondsRemaining) seconds"
    }
    
    var clockKeyYears: String {
        if let ale = averageLifeExpectancy {
            // years per hour
            let hourSpan = ale/12
            let hourSpanString = String(format: "%.2f", hourSpan)
            return "\(hourSpanString) years"
        } else {
            return ""
        }
    }
    
    var clockKeyMinutes: String {
        if let ale = averageLifeExpectancy {
            // months per min
            let minSpan = ((ale/12)/60)*12
            let minSpanString = String(format: "%.2f", minSpan)
            return "\(minSpanString) months"
        } else {
            return ""
        }
    }
    
    var clockKeySeconds: String {
        if let ale = averageLifeExpectancy {
            let secSpan = (((ale/12)/60)/60)*365
            let secSpanString = String(format: "%.2f", secSpan)
            return "\(secSpanString) days"
        } else {
            return ""
        }
    }
    
    var modifiedALE: CGFloat? {
        guard let spanModifiers = spanModifiers, let ale = averageLifeExpectancy else {
            return nil
        }
        
        var modifiedALE = averageLifeExpectancy!
        for mod in spanModifiers {
            modifiedALE += (ale * 0.1) * mod.value
        }
        
        return modifiedALE
    }
    
    
    init(name: String, dateOfBirth: Date, averageLifeExpectancy: CGFloat) {
        self.name = name
        birth = LifeEvent(title: "Birth", description: "", date: dateOfBirth)
        self.averageLifeExpectancy = averageLifeExpectancy
        spanModifiers = [String:CGFloat]()
    }
    
    /// Models lifespan as 12 hour half-day from noon to midnight.
    ///
    /// - Returns: Current age as the time left between birth and
    ///            death based on average life expectancy.
    func lifespanAsTime() -> Time? {
        
        guard let b = birth, let mALE = modifiedALE else {
            return nil
        }
        
        // Algorithm: Calc remaining lifespan as clock time
        // 1. age = thisYear - birthYear
        // 2. percentOfLifeSpent = age/expectedLifespan
        // 3. timeSpent = 12 * percentOfLifeSpent
        // 4. hourHandValue = timeSpent divisor
        // 5. minutesSpent = 60 * timeSpent remainder
        // 6. minuteHandValue = minutesSpent divisor
        // 7. secondHandValue = 60 * minutesSpent remainder
        
        let birthYear = CGFloat(Calendar.current.component(.year, from: b.date))
        let thisYear = CGFloat(Calendar.current.component(.year, from: Date()))
        
        let age = thisYear - birthYear
        let percentOfLifeSpent = age/mALE
        
        let timeSpent = 12 * percentOfLifeSpent
        
        hourHandValue = Int(timeSpent.divisor)
        let hoursRemainder = timeSpent.remainder
        
        let minutesSpent = 60 * hoursRemainder
        minuteHandValue = Int(minutesSpent.divisor)

        let secondsSpent = 60 * minutesSpent.remainder
        secondHandValue = Int(secondsSpent.divisor)
        
        let dateString = "\(hourHandValue):\(minuteHandValue):\(secondHandValue)"
        
        return LifeClock.stringToDate(dateString: dateString)
    }
    
    /// Transforms a string into a Date object.
    ///
    /// - Parameter dateString: mm-dd-yyy
    /// - Returns: Date based on mm-dd-yyy
    static func stringToDate(dateString: String) -> Date? {
        // TODO: Rename function stringToTime
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-dd-yyyy"
        return formatter.date(from: dateString)
    }
}
