//
//  Puzzle_Day01Tests.swift
//  Puzzle_Day01Tests
//
//  Created by Ankit Kumar Bharti on 03/07/18.
//  Copyright © 2018 Exilant. All rights reserved.
//

import XCTest
@testable import Puzzle_Day01

class Puzzle_Day01Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            let _ = Utility.sum(of: "4 - Lucky number, ankit kumar bharti, Mood:- 😎, DOB:- 09-April-1994")
        }
    }
    
    func testInverseCaptcha() {
        let result1 = Utility.sum(of: "1122")
        let result2 = Utility.sum(of: "1111")
        let result3 = Utility.sum(of: "1234")
        let result4 = Utility.sum(of: "91212129")
        let result5 = Utility.sum(of: "112")
        let result6 = Utility.sum(of: "ankit kumar bharti, DOB:- 09/04/1994")
        let result7 = Utility.sum(of: "4 - Lucky number, ankit kumar bharti, Mood:- 😎, DOB:- 09-April-1994")
        
        XCTAssertTrue(result1 == 3, "result of 1122 should be 3")
        XCTAssertTrue(result2 == 4, "result of 1111 should be 4")
        XCTAssertTrue(result3 == 0, "result of 1234 should be 0")
        XCTAssertTrue(result4 == 9, "result of 91212129 should be 9")
        XCTAssertTrue(result5 == 1, "result of 112 should be 1")
        XCTAssertTrue(result6 == 9, "result of ankit kumar bharti 09041994 should be 1")
        XCTAssertTrue(result7 == 13, "result of \'4 - Lucky number, ankit kumar bharti, Mood:- 😎, DOB:- 09-April-1994\' should be 13")
    }
}
