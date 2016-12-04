//
//  GoingPlacesTest.swift
//  NonsenseWithTests
//
//  Created by Amy Roberson on 12/1/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import XCTest
@testable import NonsenseWithTests

class GoingPlacesTest: XCTestCase{
    
    let directions: [(Instruction, Int)] = [(.left, 4), (.left, 4), (.left, 5), (.right, 5), (.right, 4), (.left, 4), (.right, 5), (.right, 4), (.right, 2), (.left, 3), (.right, 1), (.right, 1), (.left, 4), (.left, 5), (.right, 3), (.left, 1), (.left, 1), (.right, 4), (.left, 2), (.right, 1), (.right, 4), (.right, 4), (.left, 2), (.left, 2), (.right, 4), (.left, 4), (.right, 1), (.right, 3), (.left, 3), (.left, 1), (.left, 2), (.right, 1), (.right, 5), (.left, 5), (.left, 1), (.left, 1), (.right, 3), (.right, 5), (.left, 1), (.right, 4), (.left, 5), (.right, 5), (.right, 1), (.left, 185), (.right, 4), (.left, 1), (.right, 51), (.left, 2), (.right, 78), (.right, 1), (.left, 4), (.right, 188), (.right, 1), (.left, 5), (.right, 5), (.right, 2), (.right, 3), (.left, 5), (.right, 3), (.right, 4), (.left, 1), (.right, 2), (.right, 2), (.right, 3), (.right, 2), (.left, 5), (.right, 2), (.left, 1), (.left, 4), (.right, 4), (.left, 4), (.right, 2), (.left, 3), (.left, 4), (.right, 2), (.left, 3), (.right, 3), (.right, 2), (.left, 2), (.left, 3), (.right, 4), (.right, 3), (.right, 1), (.left, 4), (.left, 2), (.left, 5), (.right, 4), (.right, 4), (.left, 1), (.right, 1), (.left, 5), (.left, 1), (.right, 3), (.right, 1), (.left, 2), (.right, 1), (.right, 1), (.right, 3), (.left, 4), (.left, 1), (.left, 3), (.right, 2), (.right, 4), (.right, 2), (.left, 2), (.right, 1), (.left, 5), (.right, 3), (.left, 3), (.right, 3), (.left, 1), (.right, 4), (.left, 3), (.left, 3), (.right, 4), (.left, 2), (.left, 1), (.left, 3), (.right, 2), (.right, 3), (.left, 2), (.left, 1), (.right, 4), (.left, 3), (.left, 5), (.left, 2), (.left, 4), (.right, 1), (.left, 4), (.left, 4), (.right, 3), (.right, 5), (.left, 4), (.left, 1), (.left, 1), (.right, 4), (.left, 2), (.right, 5), (.right, 1), (.right, 1), (.right, 2), (.right, 1), (.right, 5), (.left, 1), (.left, 3), (.left, 5), (.right, 2), (.left, 4), (.left, 4), (.left, 5), (.right, 5), (.right, 4), (.left, 4), (.right, 5), (.right, 4), (.right, 2), (.left, 3), (.right, 1), (.right, 1), (.left, 4), (.left, 5), (.right, 3), (.left, 1), (.left, 1), (.right, 4), (.left, 2), (.right, 1), (.right, 4), (.right, 4), (.left, 2), (.left, 2), (.right, 4), (.left, 4), (.right, 1), (.right, 3), (.left, 3), (.left, 1), (.left, 2), (.right, 1), (.right, 5), (.left, 5), (.left, 1), (.left, 1), (.right, 3), (.right, 5), (.left, 1), (.right, 4), (.left, 5), (.right, 5), (.right, 1), (.left, 185), (.right, 4), (.left, 1), (.right, 51)]
    let xY: [(Instruction, Int)] = [( .right, 10) , (.left, 10)]
    let xY1: [(Instruction, Int)] = [( .left, 10) , (.right, 10)]
    let xY2:  [(Instruction, Int)] = [( .right, 10) , (.left, 10) , (.left, 10), (.left, 10)]

    //extra credit step 2 examples to test
    let directions1: [(Instruction, Int)] = [(.north, 5), (.east, 10)]
    let directions2: [(Instruction, Int)] = [(.north, 5), (.south, 5)]
    let directions3: [(Instruction, Int)] = [(.north, 5), (.south, 5), (.west, 10), (.east, 5)]
    let directions4: [(Instruction, Int)] = [(.north, 5), (.south, 15), (.west, 10), (.east, 5)]
    let directions5: [(Instruction, Int)] = [(.north, 5), (.south, 15), (.west, 2), (.east, 5)]


    
    func testLocationChangeSimple() {
        let result = goingPlaces(instructions: [(turn: .left, distance: 67)])
        let expected: (x: Int, y: Int) = (x: -67, y: 0)
        XCTAssertEqual(result.x, expected.x)
        XCTAssertEqual(result.y, expected.y)
    }
    
    func testLocationChange() {
        let result = goingPlaces(instructions: [(turn: .left, distance: 67), (turn: .right, distance: 7), (turn: .left, distance: 6)])
        let expected: (x: Int, y: Int) = (x: -73, y: 7)
        XCTAssertEqual(result.x, expected.x)
        XCTAssertEqual(result.y, expected.y)
    }
    
    func testLocationChange1() {
        let result = goingPlaces(instructions: [(turn: .left, distance: 1), (turn: .right, distance: 17), (turn: .left, distance: 6)])
        let expected: (x: Int, y: Int) = (x: -7, y: 17)
        XCTAssertEqual(result.x, expected.x)
        XCTAssertEqual(result.y, expected.y)
    }
    func testLocationChangeLong() {
        let result = goingPlaces(instructions: directions)
        let expected: (x: Int, y: Int) = (x: 327, y: -43)
        XCTAssertEqual(result.x, expected.x)
        XCTAssertEqual(result.y, expected.y)
    }
    func testLocationChangexY() {
        let result = goingPlaces(instructions: xY)
        let expected: (x: Int, y: Int) = (x: 10, y: 10)
        XCTAssertEqual(result.x, expected.x)
        XCTAssertEqual(result.y, expected.y)
    }
    
    func testLocationChangexY1() {
        let result = goingPlaces(instructions: xY1)
        let expected: (x: Int, y: Int) = (x: -10, y: 10)
        XCTAssertEqual(result.x, expected.x)
        XCTAssertEqual(result.y, expected.y)
    }
    
    func testLocationChangexY2() {
        let result = goingPlaces(instructions: xY2)
        let expected: (x: Int, y: Int) = (x: 0, y: 0)
        XCTAssertEqual(result.x, expected.x)
        XCTAssertEqual(result.y, expected.y)
    }
    
    func testLocationChangeDirections1() {
        let result = goingPlaces(instructions: directions1)
        let expected: (x: Int, y: Int) = (x: 10, y: 5)
        XCTAssertEqual(result.x, expected.x)
        XCTAssertEqual(result.y, expected.y)
    }
    
    func testLocationChangeDirections2() {
        let result = goingPlaces(instructions: directions2)
        let expected: (x: Int, y: Int) = (x: 0, y: 0)
        XCTAssertEqual(result.x, expected.x)
        XCTAssertEqual(result.y, expected.y)
    }
    
    func testLocationChangeDirections3() {
        let result = goingPlaces(instructions: directions3)
        let expected: (x: Int, y: Int) = (x: -5, y: 0)
        XCTAssertEqual(result.x, expected.x)
        XCTAssertEqual(result.y, expected.y)
    }
    
    func testLocationChangeDirections4() {
        let result = goingPlaces(instructions: directions4)
        let expected: (x: Int, y: Int) = (x: -5, y: -10)
        XCTAssertEqual(result.x, expected.x)
        XCTAssertEqual(result.y, expected.y)
    }
    
    func testLocationChangeDirections5() {
        let result = goingPlaces(instructions: directions5)
        let expected: (x: Int, y: Int) = (x: 3, y: -10)
        XCTAssertEqual(result.x, expected.x)
        XCTAssertEqual(result.y, expected.y)
    }
    
    
}
