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
    
    func test04_OneMinuteAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(61), "1 Minute and 1 Second")
    }

    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
