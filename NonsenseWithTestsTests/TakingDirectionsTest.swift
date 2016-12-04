//
//  TakingDirectionsTest.swift
//  NonsenseWithTests
//
//  Created by Amy Roberson on 12/3/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import XCTest
@testable import NonsenseWithTests

class TakingDirectionsTest: XCTestCase {
    
    let directions1: [(Instruction, Int)] = [(.north, 5), (.east, 10)]
    let directions2: [(Instruction, Int)] = [(.north, 5), (.south, 5)]
    let directions3: [(Instruction, Int)] = [(.north, 5), (.south, 5), (.west, 10), (.east, 5)]
    let directions4: [(Instruction, Int)] = [(.north, 5), (.south, 15), (.west, 10), (.east, 5)]
    let directions5: [(Instruction, Int)] = [(.north, 5), (.south, 15), (.west, 2), (.east, 5)]
    let example: [(Instruction, Int)] = [(.east, 28), (.east, 8), (.north, 80), (.north, 7), (.east, 12), (.south, 21), (.west, 25), (.north, 29), (.east, 15), (.north, 58), (.east, 66), (.west, 16), (.south, 87), (.west, 1), (.east, 11), (.south, 99), (.west, 92), (.east, 55), (.north, 15), (.north, 23), (.north, 11), (.north, 28), (.south, 32), (.north, 9), (.south, 48), (.west, 9), (.east, 35), (.south, 68), (.north, 5), (.west, 81), (.north, 52), (.south, 9), (.east, 79), (.north, 22), (.west, 55), (.west, 29), (.south, 46), (.north, 76), (.north, 79), (.east, 4), (.east, 51), (.south, 18), (.north, 86), (.south, 39), (.north, 48), (.west, 35), (.west, 69), (.west, 76), (.north, 9), (.north, 58), (.east, 78), (.north, 84), (.east, 65), (.west, 65), (.west, 48), (.east, 97), (.north, 13), (.north, 40), (.north, 94), (.west, 22), (.west, 10), (.east, 67), (.south, 56), (.east, 92), (.east, 20), (.north, 31), (.north, 47), (.east, 16), (.west, 75), (.west, 28), (.north, 19), (.west, 6), (.east, 42), (.east, 83), (.north, 47), (.north, 17), (.north, 38), (.north, 28), (.north, 43), (.north, 95), (.west, 27), (.west, 30), (.south, 7), (.east, 17), (.north, 97), (.north, 12), (.north, 17), (.north, 8), (.south, 37), (.west, 41), (.east, 14), (.east, 68), (.north, 51), (.east, 57), (.west, 21), (.north, 55), (.west, 94), (.south, 61), (.south, 14), (.west, 9), (.south, 78), (.north, 94), (.north, 70), (.east, 36), (.east, 71), (.west, 75), (.north, 99), (.east, 22), (.north, 22), (.west, 42), (.north, 24), (.south, 17), (.east, 0), (.south, 20), (.east, 95), (.east, 94), (.south, 89), (.north, 74), (.south, 44), (.north, 82), (.south, 17), (.north, 28), (.south, 16), (.south, 51), (.south, 97), (.north, 2), (.north, 53), (.north, 33), (.south, 51), (.south, 7), (.south, 12), (.west, 69), (.west, 14), (.north, 17), (.south, 64), (.west, 10), (.east, 18), (.south, 36), (.north, 91), (.north, 2), (.north, 95), (.east, 64), (.west, 88), (.east, 13), (.east, 7), (.south, 85), (.north, 71), (.east, 38), (.south, 83), (.west, 87)]
    
    
    func testTakingDirections1() {
        let result = takingDirections(directions: directions1)
        let expectedResult = (10, 5)
        XCTAssertEqual(result.x, expectedResult.0)
        XCTAssertEqual(result.y, expectedResult.1)
    }
    
    func testTakingDirections2() {
        let result = takingDirections(directions: directions2)
        let expectedResult = (0, 0)
        XCTAssertEqual(result.x, expectedResult.0)
        XCTAssertEqual(result.y, expectedResult.1)
    }
    
    func testTakingDirections3() {
        let result = takingDirections(directions: directions3)
        let expectedResult = (-5, 0)
        XCTAssertEqual(result.x, expectedResult.0)
        XCTAssertEqual(result.y, expectedResult.1)
    }
    
    
    func testTakingDirections4() {
        let result = takingDirections(directions: directions4)
        let expectedResult = (-5, -10)
        XCTAssertEqual(result.x, expectedResult.0)
        XCTAssertEqual(result.y, expectedResult.1)
    }
    
    func testTakingDirections5() {
        let result = takingDirections(directions: directions5)
        let expectedResult = (3, -10)
        XCTAssertEqual(result.x, expectedResult.0)
        XCTAssertEqual(result.y, expectedResult.1)
    }
    
    func testTakingDirectionsExample() {
        let result = takingDirections(directions: example)
        print(result)
    }
    
}
