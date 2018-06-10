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
    
    func test21_OneDayAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24+1), "1 Day and 1 Second")
    }
    
    func test22_OneDayAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24+2), "1 Day and 2 Seconds")
    }

    func test23_OneDayAndOneMinute() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24+60), "1 Day and 1 Minute")
    }
    
    func test24_OneDayAndTwoMinutes() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24+120), "1 Day and 2 Minutes")
    }
    
    func test25_OneDayOneMinuteAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24+60+1), "1 Day, 1 Minute and 1 Second")
    }
    
    func test26_OneDayOneMinuteAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24+60+2), "1 Day, 1 Minute and 2 Seconds")
    }

    func test27_OneDayTwoMinutesAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24+120+1), "1 Day, 2 Minutes and 1 Second")
    }
    
    func test28_OneDayTwoMinutesAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24+120+2), "1 Day, 2 Minutes and 2 Seconds")
    }

    func test29_TwoDays() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*2), "2 Days")
    }
    
    func test30_TwoDaysAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*2+1), "2 Days and 1 Second")
    }
    
    func test31_TwoDaysAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*2+2), "2 Days and 2 Seconds")
    }
    
    func test32_TwoDaysAndOneMinute() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*2+60), "2 Days and 1 Minute")
    }
    
    func test33_TwoDaysAndTwoMinutes() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*2+120), "2 Days and 2 Minutes")
    }
    
    func test34_TwoDaysOneMinuteAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*2+60+1), "2 Days, 1 Minute and 1 Second")
    }
    
    func test35_TwoDaysOneMinuteAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*2+60+2), "2 Days, 1 Minute and 2 Seconds")
    }
    
    func test36_TwoDaysTwoMinutesAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*2+120+1), "2 Days, 2 Minutes and 1 Second")
    }
    
    func test37_TwoDaysTwoMinutesAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*2+120+2), "2 Days, 2 Minutes and 2 Seconds")
    }
    
    func test38_OneYear() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365), "1 Year")
    }

    
    func test39_OneYearAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+1), "1 Year and 1 Second")
    }
    
    func test40_OneYearAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+2), "1 Year and 2 Seconds")
    }
    
    func test41_OneYearAndOneMinute() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+60), "1 Year and 1 Minute")
    }
    
    func test42_OneYearOneMinuteAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+61), "1 Year, 1 Minute and 1 Second")
    }
    
    func test43_OneYearOneMinuteAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+62), "1 Year, 1 Minute and 2 Seconds")
    }
    
    func test44_OneYearANdTwoMinutes() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+120), "1 Year and 2 Minutes")
    }
    
    func test45_OneYearTwoMinutesAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+121), "1 Year, 2 Minutes and 1 Second")
    }
    
    func test46_OneYearTwoMinutesAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+122), "1 Year, 2 Minutes and 2 Seconds")
    }
    
    func test47_OneYearAndOneHour() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600), "1 Year and 1 Hour")
    }
    
    func test48_OneHourAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3601), "1 Year, 1 Hour and 1 Second")
    }
    
    func test49_OneYearOneHourAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3602), "1 Year, 1 Hour and 2 Seconds")
    }
    
    func test50_OneYearOneHourOneMinute() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600+60), "1 Year, 1 Hour and 1 Minute")
    }
    
    func test51_OneYearOneHourOneMinuteAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600+60+1), "1 Year, 1 Hour, 1 Minute and 1 Second")
    }
    
    func test52_OneYearOneHourOneMinuteAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600+60+2), "1 Year, 1 Hour, 1 Minute and 2 Seconds")
    }
    
    func test53_OneYearOneHourAndTwoMinute() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600+120), "1 Year, 1 Hour and 2 Minutes")
    }
    
    func test54_OneYearOneHourTwoMinuteAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600+120+1), "1 Year, 1 Hour, 2 Minutes and 1 Second")
    }
    
    func test55_OneYearOneHourTwoMinuteAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600+120+2), "1 Year, 1 Hour, 2 Minutes and 2 Seconds")
    }
    
    func test56_OneYearAndTwoHours() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+7200), "1 Year and 2 Hours")
    }
    
    func test57_OneYearAndOneDay() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24), "1 Year and 1 Day")
    }
    
    func test58_OneYearOneDayAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24+1), "1 Year, 1 Day and 1 Second")
    }
    
    func test59_OneYearOneDayAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24+2), "1 Year, 1 Day and 2 Seconds")
    }
    
    func test60_OneYearOneDayAndOneMinute() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24+60), "1 Year, 1 Day and 1 Minute")
    }
    
    func test61_OneYearOneDayAndTwoMinutes() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24+120), "1 Year, 1 Day and 2 Minutes")
    }
    
    func test62_OneYearOneDayOneMinuteAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24+60+1), "1 Year, 1 Day, 1 Minute and 1 Second")
    }
    
    func test63_OneYearOneDayOneMinuteAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24+60+2), "1 Year, 1 Day, 1 Minute and 2 Seconds")
    }
    
    func test64_OneYearOneDayTwoMinutesAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24+120+1), "1 Year, 1 Day, 2 Minutes and 1 Second")
    }
    
    func test65_OneYearOneDayTwoMinutesAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24+120+2), "1 Year, 1 Day, 2 Minutes and 2 Seconds")
    }
    
    func test66_OneYearAndTwoDays() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24*2), "1 Year and 2 Days")
    }
    
    func test67_OneYearTwoDaysAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24*2+1), "1 Year, 2 Days and 1 Second")
    }
    
    func test68_OneYearTwoDaysAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24*2+2), "1 Year, 2 Days and 2 Seconds")
    }
    
    func test69_OneYearTwoDaysAndOneMinute() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24*2+60), "1 Year, 2 Days and 1 Minute")
    }
    
    func test70_OneYearTwoDaysAndTwoMinutes() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24*2+120), "1 Year, 2 Days and 2 Minutes")
    }
    
    func test71_OneYearTwoDaysOneMinuteAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24*2+60+1), "1 Year, 2 Days, 1 Minute and 1 Second")
    }
    
    func test72_OneYearTwoDaysOneMinuteAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24*2+60+2), "1 Year, 2 Days, 1 Minute and 2 Seconds")
    }
    
    func test73_OneYearTwoDaysTwoMinutesAndOneSecond() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24*2+120+1), "1 Year, 2 Days, 2 Minutes and 1 Second")
    }
    
    func test74_OneYearTwoDaysTwoMinutesAndTwoSeconds() {
        XCTAssertEqual(HumanReadableDateFormat(3600*24*365+3600*24*2+120+2), "1 Year, 2 Days, 2 Minutes and 2 Seconds")
    }

    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
