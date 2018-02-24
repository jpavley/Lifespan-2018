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
        let birthDate = Lifespan.stringToDate(dateString: "02-13-1961")
        
        let birthMonth = Calendar.current.component(.month, from: birthDate!)
        print("birthMonth \(birthMonth)")
        
        let birthDay = Calendar.current.component(.day, from: birthDate!)
        print("birthDay \(birthDay)")

        let birthYear = Calendar.current.component(.year, from: birthDate!)
        print("birthYear \(birthYear)")

        XCTAssertTrue(birthMonth == 2)
        XCTAssertTrue(birthDay == 13)
        XCTAssertTrue(birthYear == 1961)
    }
    
    func testLifespanClass() {
        let birthDate = Lifespan.stringToDate(dateString: "02-13-1961")
        let ls = Lifespan(name: "John", dateOfBirth: birthDate!, averageLifeExpectancy: 82.8)
        
        XCTAssertNotNil(ls)
    }
    
    func testLifespanAsTime() {
        let birthDate = Lifespan.stringToDate(dateString: "02-13-1961")
        let ls = Lifespan(name: "John", dateOfBirth: birthDate!, averageLifeExpectancy: 82.8)
        
        let spanTime = ls.lifespanAsTime()
        let expectedTime = LifeClock.stringToDate(dateString: "07:47:44")
        XCTAssertTrue(spanTime == expectedTime)
    }
}
