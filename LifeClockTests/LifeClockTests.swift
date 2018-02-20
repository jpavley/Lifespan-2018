//
//  LifeClockTests.swift
//  LifeClockTests
//
//  Created by jpavley12 on 2/19/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import XCTest

class LifeClockTests: XCTestCase {
    
    var testList = [String: CGFloat]()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        testList["00:00:00"] = 0.0
        testList["00:30:00"] = 15.0
        testList["01:00:00"] = 30.0
        testList["01:30:00"] = 45.0
        testList["03:00:00"] = 90.0
        testList["03:30:00"] = 105.0
        testList["06:00:00"] = 180.0
        testList["06:30:00"] = 195.0
        testList["09:00:00"] = 270.0
        testList["09:30:00"] = 285.0
        testList["12:00:00"] = 0.0
        testList["12:30:00"] = 15.0


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
        for (key, value) in testList {
            print("")
            print("= testing time \(key), angle \(value)")
            
            let date = LifeClock.stringToDate(dateString: key)
            print("== date \(date!)")
            
            let lc = LifeClock(time: date!)
            let hourHandAngle = lc.hourHandAngle
            print("== hourHandAngle \(hourHandAngle)")
            
            XCTAssertNotNil(hourHandAngle)
            XCTAssertEqual(hourHandAngle, value)
        }
    }

    
}
