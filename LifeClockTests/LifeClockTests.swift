//
//  LifeClockTests.swift
//  LifeClockTests
//
//  Created by jpavley12 on 2/19/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import XCTest

class LifeClockTests: XCTestCase {
    
    struct AngleComponents {
        let hour: CGFloat
        let minute: CGFloat
        let second: CGFloat
        
        init(_ hour: Double, _ minute: Double, _ second: Double) {
            self.hour = CGFloat(hour)
            self.minute = CGFloat(minute)
            self.second = CGFloat(second)
        }
    }
    var testList = [String: AngleComponents]()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        testList["00:00:00"] = AngleComponents(0.0, 0.0, 0.0)
        testList["00:30:00"] = AngleComponents(15.0, 90.0, 0.0)
        testList["01:00:00"] = AngleComponents(30.0, 0.0, 0.0)
        testList["01:30:00"] = AngleComponents(45.0, 90.0, 0.0)
        testList["03:00:00"] = AngleComponents(90.0, 0.0, 0.0)
        testList["03:30:00"] = AngleComponents(105.0, 90.0, 0.0)
        testList["06:00:00"] = AngleComponents(180.0, 0.0, 0.0)
        testList["06:30:00"] = AngleComponents(195.0, 90.0, 0.0)
        testList["09:00:00"] = AngleComponents(270.0, 0.0, 0.0)
        testList["09:30:00"] = AngleComponents(285.0, 90.0, 0.0)
        testList["12:00:00"] = AngleComponents(0.0, 0.0, 0.0)
        testList["12:30:00"] = AngleComponents(15.0, 90.0, 0.0)


    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLifeClockClass() {
        let lc = LifeClock(time: Date())
        XCTAssertNotNil(lc)
    }
    
    func testHourHandAngle() {
        for (key, value) in testList {
//            print("")
//            print("= testing time \(key), angle \(value.hour)")
            
            let date = LifeClock.stringToDate(dateString: key)
//            print("== date \(date!)")
            
            let lc = LifeClock(time: date!)
            let hourHandAngle = lc.hourHandAngle
//            print("== hourHandAngle \(hourHandAngle)")
            
            XCTAssertNotNil(hourHandAngle)
            XCTAssertEqual(hourHandAngle, value.hour)
        }
    }
    
    func testMinuteHandAngle() {
        for (key, value) in testList {
            print("")
            print("= testing time \(key), angle \(value.minute)")
            
            let date = LifeClock.stringToDate(dateString: key)
            print("== date \(date!)")
            
            let lc = LifeClock(time: date!)
            let minuetHandAngle = lc.minuteHandAngle
            print("== hourHandAngle \(minuetHandAngle)")
            
            XCTAssertNotNil(minuetHandAngle)
            XCTAssertEqual(minuetHandAngle, value.minute)
        }
    }


    
}
