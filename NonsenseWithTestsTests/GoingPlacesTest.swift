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
    
}
