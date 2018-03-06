//
//  LifeSpanTests.swift
//  LifeClockTests
//
//  Created by John Pavley on 2/23/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import XCTest

class LifeSpanTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStringToDate() {
        let birthDate = CalendarUtilities.stringToDate(dateString: "02-13-1961")
        let cal = CalendarUtilities.utcCal()
        
        let birthMonth = cal.component(.month, from: birthDate!)
        print("birthMonth \(birthMonth)")
        
        let birthDay = cal.component(.day, from: birthDate!)
        print("birthDay \(birthDay)")

        let birthYear = cal.component(.year, from: birthDate!)
        print("birthYear \(birthYear)")

        XCTAssertTrue(birthMonth == 2)
        XCTAssertTrue(birthDay == 13)
        XCTAssertTrue(birthYear == 1961)
    }
    
    func testLifespanClass() {
        let birthDate = CalendarUtilities.stringToDate(dateString: "02-13-1961")
        let ls = Lifespan(name: "John", dateOfBirth: birthDate!, averageLifeExpectancy: 82.8)
        
        XCTAssertNotNil(ls)
    }
    
    func testLifespanAsTime() {
        let birthDate = CalendarUtilities.stringToDate(dateString: "02-13-1961")
        let ls = Lifespan(name: "John", dateOfBirth: birthDate!, averageLifeExpectancy: 82.8)
        
        let spanTime = ls.lifespanAsTime()
        let expectedTime = CalendarUtilities.stringToTime(timeString: "08:15:39")
        XCTAssertTrue(spanTime == expectedTime)
    }
    
    func testModifiedLifeExpectancy() {
        let birthDate = CalendarUtilities.stringToDate(dateString: "02-13-1961")
        let ls = Lifespan(name: "John", dateOfBirth: birthDate!, averageLifeExpectancy: 82.8)
        ls.spanModifiers!["activity"] = CGFloat(0.5)
        
        let spanTime = ls.lifespanAsTime()
        let expectedTime = CalendarUtilities.stringToTime(timeString: "07:52:02")
        XCTAssertTrue(spanTime == expectedTime)
        
    }
    
    func testLieTimeRemaining() {
        let birthDate = CalendarUtilities.stringToDate(dateString: "02-13-1961")
        let ls = Lifespan(name: "John", dateOfBirth: birthDate!, averageLifeExpectancy: 82.8)
        let _ = ls.lifespanAsTime() // forces calucation of hourHandValue, minuetHandValue, secondHandValue
        
        let hoursRemaining = ls.hoursRemaining
        let expectedHoursRemaining = 3
        XCTAssertTrue(hoursRemaining == expectedHoursRemaining)
        
        let minutesRemaining = ls.minutesRemaining
        let expectedMinutesRemaining = 44
        XCTAssertTrue(minutesRemaining == expectedMinutesRemaining)

        let secondsRemaining = ls.secondsRemaining
        let expectedSecondsRemaining = 21
        XCTAssertTrue(secondsRemaining == expectedSecondsRemaining)
    }
}
