//
//  FacingDirectionsTest.swift
//  NonsenseWithTests
//
//  Created by Amy Roberson on 12/1/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import XCTest
@testable import NonsenseWithTests

class FacingDirectionsTest: XCTestCase {
    
    func testturnRightTestNorth() { 
        let result = turning(direction: .north, rightLeft: .right)
        let expected: FacingDirection = .east
        XCTAssertEqual(result, expected)
    }
    
    func testturnRightTestsouth() {
        let result = turnRight(direction: .south)
        let expected: FacingDirection = .west
        XCTAssertEqual(result, expected)
    }
    
    func testturnRightTestEast() {
        let result = turnRight(direction: .east)
        let expected: FacingDirection = .south
        XCTAssertEqual(result, expected)
    }
    
    func testturnRightTestWest() {
        let result = turnRight(direction: .west)
        let expected: FacingDirection = .north
        XCTAssertEqual(result, expected)
    }
    
    func testturnLeftTestNorth() {
        let result = turnRight(direction: .north)
        let expected: FacingDirection = .west
        XCTAssertEqual(result, expected)
    }
    
    func testturnLeftTestSouth() {
        let result = turnRight(direction: .south)
        let expected: FacingDirection = .east
        XCTAssertEqual(result, expected)
    }
    
    func testturnLeftTestEast() {
        let result = turnRight(direction: .east)
        let expected: FacingDirection = .west
        XCTAssertEqual(result, expected)
    }
    
    func testturnLeftTestWest() {
        let result = turnRight(direction: .west)
        let expected: FacingDirection = .south
        XCTAssertEqual(result, expected)
    }
}
