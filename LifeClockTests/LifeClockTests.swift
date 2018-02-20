//
//  LifeClockTests.swift
//  LifeClockTests
//
//  Created by jpavley12 on 2/19/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import XCTest

class LifeClockTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLifeClockClass() {
        let lc = LifeClock(time: Date())
        XCTAssertNotNil(lc)
    }
    
    func testHourHandAngel() {
        let date = LifeClock.stringToDate(dateString: "01-01-2018")
        print("date \(date!)")
        let lc = LifeClock(time: date!)
        let hourHandAngle = lc.hourHandAngle
        XCTAssertNotNil(hourHandAngle)
        print("hourHandAngle \(hourHandAngle)")
    }

    
}
