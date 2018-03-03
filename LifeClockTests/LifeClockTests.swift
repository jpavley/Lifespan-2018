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
        
        testList["00:00:01"] = AngleComponents(0.0, 0.1, 6.0)
        testList["00:00:10"] = AngleComponents(0.0, 1.0, 60.0)
        testList["00:00:15"] = AngleComponents(0.0, 1.5, 90.0)
        testList["00:00:30"] = AngleComponents(0.0, 3.0, 180.0)
        testList["00:00:59"] = AngleComponents(0.0, 5.9, 354.0)
        
        testList["00:10:00"] = AngleComponents(5.0, 60.0, 0.0)
        testList["00:15:00"] = AngleComponents(7.5, 90.0, 0.0)
        testList["00:30:00"] = AngleComponents(15.0, 180.0, 0.0)
        
        testList["01:00:00"] = AngleComponents(30.0, 0.0, 0.0)
        testList["01:30:00"] = AngleComponents(45.0, 180.0, 0.0)
        
        testList["03:00:00"] = AngleComponents(90.0, 0.0, 0.0)
        testList["03:30:00"] = AngleComponents(105.0, 180.0, 0.0)
        
        testList["06:00:00"] = AngleComponents(180.0, 0.0, 0.0)
        testList["06:30:00"] = AngleComponents(195.0, 180.0, 0.0)
        
        testList["09:00:00"] = AngleComponents(270.0, 0.0, 0.0)
        testList["09:30:00"] = AngleComponents(285.0, 180.0, 0.0)
        
        testList["10:23:39"] = AngleComponents(311.5, 141.9, 234.0)
        
        testList["12:00:00"] = AngleComponents(0.0, 0.0, 0.0)
        testList["12:30:00"] = AngleComponents(15.0, 180.0, 0.0)
        
//        testList["13:00:00"] = AngleComponents(30.0, 0.0, 0.0)
//        testList["13:30:00"] = AngleComponents(45.0, 180.0, 0.0)

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
            
            let date = CalendarUtilities.stringToTime(timeString: key)
            let lc = LifeClock(time: date!)
            let hourHandAngle = lc.hourHandAngle
            
            XCTAssertNotNil(hourHandAngle)
            XCTAssertEqual(hourHandAngle, value.hour)
        }
    }
    
    func testMinuteHandAngle() {
        for (key, value) in testList {
            
            let date = CalendarUtilities.stringToTime(timeString: key)
            let lc = LifeClock(time: date!)
            let minuetHandAngle = lc.minuteHandAngle
            
            XCTAssertNotNil(minuetHandAngle)
            XCTAssertEqual(minuetHandAngle, value.minute)
        }
    }
    
    func testSecondHandAngle() {
        for (key, value) in testList {
            print("")
            print("= testing time \(key), angle \(value.second)")
            
            let date = CalendarUtilities.stringToTime(timeString: key)
            print("== date \(date!)")
            
            let lc = LifeClock(time: date!)
            let secondHandAngle = lc.secondHandAngle
            print("== secondHandAngle \(secondHandAngle)")
            
            XCTAssertNotNil(secondHandAngle)
            XCTAssertEqual(secondHandAngle, value.second)
        }
    }


    
}
