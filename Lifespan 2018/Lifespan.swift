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

class Lifespan {
    var name: String?
    var birth: LifeEvent?
    var death: LifeEvent?
    var lifeEvents: [Lifespan]?
    var averageLifeExpectancy: CGFloat?
    
    init(name: String, dateOfBirth: Date, averageLifeExpectancy: CGFloat) {
        self.name = name
        birth = LifeEvent(title: "Birth", description: "", date: dateOfBirth)
        self.averageLifeExpectancy = averageLifeExpectancy
    }
    
    /// Models lifespan as 12 hour half-day from noon to midnight.
    ///
    /// - Returns: Current age as the time left between birth and
    ///            death based on average life expectancy.
    func lifespanAsTime() -> Time? {
        
        guard let b = birth, let ale = averageLifeExpectancy else {
            return nil
        }
        
        let birthYear = CGFloat(Calendar.current.component(.year, from: b.date))
        let thisYear = CGFloat(Calendar.current.component(.year, from: Date()))
        let age = thisYear - birthYear
        let percentLifeSpent = age / ale
        print(percentLifeSpent)
        
        return Date()
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
