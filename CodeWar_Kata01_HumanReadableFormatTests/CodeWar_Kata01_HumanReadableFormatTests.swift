//
//  CodeWar_Kata01_HumanReadableFormatTests.swift
//  CodeWar_Kata01_HumanReadableFormatTests
//
//  Created by AKI on 2018/6/10.
//  Copyright © 2018年 AKI. All rights reserved.
//

import XCTest
@testable import CodeWar_Kata01_HumanReadableFormat

class CodeWar_Kata01_HumanReadableFormatTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test01_ZeroSecond() {
        XCTAssertEqual(HumanReadableDateFormat(0), "0 Second")
    }

    func test02_OneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(1), "1 Second")
    }
  
    func test03_TwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(2), "2 Seconds")
    }
    
    func test04_OneMinute() {
        XCTAssertEqual(HumanReadableDateFormat(60), "1 Minute")
    }
    
    func test05_OneMinuteAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(61), "1 Minute and 1 Second")
    }
    
    func test06_OneMinuteAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(62), "1 Minute and 2 Seconds")
    }
    
    func test07_TwoMinutes() {
        XCTAssertEqual(HumanReadableDateFormat(120), "2 Minutes")
    }
    
    func test08_TwoMinutesAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(121), "2 Minutes and 1 Second")
    }
    
    func test09_TwoMinutesAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(122), "2 Minutes and 2 Seconds")
    }
    
    func test10_OneHour() {
        XCTAssertEqual(HumanReadableDateFormat(3600), "1 Hour")
    }
    
    func test11_OneHourAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3601), "1 Hour and 1 Second")
    }
    
    func test12_OneHourAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3602), "1 Hour and 2 Seconds")
    }
    
    func test13_OneHourOneMinute() {
        XCTAssertEqual(HumanReadableDateFormat(3600+60), "1 Hour and 1 Minute")
    }
    
    func test14_OneHourOneMinuteAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600+60+1), "1 Hour, 1 Minute and 1 Second")
    }
    
    func test15_OneHourOneMinuteAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600+60+2), "1 Hour, 1 Minute and 2 Seconds")
    }
    
    func test16_OneHourAndTwoMinute() {
        XCTAssertEqual(HumanReadableDateFormat(3600+120), "1 Hour and 2 Minutes")
    }
    
    func test17_OneHourTwoMinuteAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600+120+1), "1 Hour, 2 Minutes and 1 Second")
    }
    
    func test18_OneHourTwoMinuteAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600+120+2), "1 Hour, 2 Minutes and 2 Seconds")
    }
    
    func test19_TwoHours() {
        XCTAssertEqual(HumanReadableDateFormat(7200), "2 Hours")
    }
    
    func test20_OneDay() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24), "1 Day")
    }
    
    
   

    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
