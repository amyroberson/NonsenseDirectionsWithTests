//
//  FollowingDirectionsTests.swift
//  NonsenseWithTests
//
//  Created by Amy Roberson on 12/3/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import XCTest
@testable import NonsenseWithTests


class FollowingDirectionsTests: XCTestCase {
    
    let directions1: [(Instruction, Int)] = [(.north, 5), (.east, 10)]
    let directions2: [(Instruction, Int)] = [(.north, 5), (.south, 5)]
    let directions3: [(Instruction, Int)] = [(.north, 5), (.south, 5), (.west, 10), (.east, 5)]
    let directions4: [(Instruction, Int)] = [(.north, 5), (.south, 15), (.west, 10), (.east, 5)]
    let directions5: [(Instruction, Int)] = [(.north, 5), (.south, 15), (.west, 2), (.east, 5)]
    let directions6: [(Instruction, Int)] = [(.east, 10), (.right, 5), (.left, 10), (.west, 20)]
    let directions7: [(Instruction, Int)] = [(.right, 10), (.south, 5), (.east, 10), (.west, 20)]
    let example: [(Instruction, Int)] = [(.right, 87), (.right, 12), (.south, 39), (.left, 52), (.right, 45), (.east, 34), (.east, 62), (.right, 33), (.right, 20), (.left, 42), (.south, 6), (.west, 26), (.west, 55), (.south, 91), (.left, 18), (.south, 10), (.east, 61), (.west, 82), (.right, 54), (.east, 46), (.left, 49), (.south, 71), (.left, 38), (.south, 35), (.east, 87), (.south, 35), (.left, 12), (.north, 97), (.south, 46), (.right, 61), (.right, 59), (.right, 13), (.north, 58), (.west, 2), (.east, 10), (.left, 56), (.right, 53), (.east, 42), (.north, 88), (.north, 60), (.east, 87), (.north, 15), (.north, 20), (.west, 92), (.north, 62), (.north, 39), (.left, 95), (.right, 4), (.west, 62), (.right, 29), (.north, 72), (.right, 31), (.left, 72), (.north, 29), (.right, 30), (.left, 41), (.north, 80), (.right, 22), (.west, 65), (.south, 99), (.east, 31), (.right, 19), (.north, 80), (.west, 43), (.east, 96), (.left, 88), (.north, 77), (.east, 41), (.south, 76), (.right, 65), (.south, 48), (.left, 71), (.right, 96), (.east, 85), (.east, 29), (.south, 45), (.left, 70), (.south, 23), (.left, 3), (.west, 26), (.east, 83), (.west, 65), (.north, 20), (.north, 76), (.left, 9), (.left, 6), (.left, 16), (.south, 75), (.left, 73), (.left, 16), (.right, 15), (.east, 73), (.south, 46), (.right, 22), (.east, 78), (.left, 70), (.right, 10), (.north, 97), (.west, 18), (.south, 23), (.north, 9), (.west, 21), (.right, 58), (.east, 21), (.south, 22), (.south, 35), (.west, 37), (.north, 33), (.south, 51), (.left, 48), (.south, 18), (.south, 97), (.east, 41), (.east, 98), (.south, 14), (.north, 32), (.west, 10), (.east, 70), (.left, 38), (.east, 2), (.west, 6), (.south, 25), (.east, 16), (.west, 39), (.south, 70), (.left, 38), (.left, 21), (.left, 91), (.east, 33), (.right, 90), (.right, 31), (.left, 57), (.left, 68), (.north, 31), (.west, 52), (.north, 79), (.south, 6), (.south, 5), (.north, 41), (.right, 67), (.west, 8), (.north, 55), (.left, 21), (.right, 38), (.north, 85), (.north, 7), (.left, 6), (.north, 21), (.left, 55), (.north, 85), (.left, 66), (.east, 6), (.north, 38), (.east, 7), (.left, 50), (.right, 63), (.right, 94), (.east, 70), (.east, 43), (.north, 99), (.right, 29), (.south, 45), (.south, 97), (.right, 24), (.south, 60), (.right, 34), (.right, 23), (.right, 60), (.left, 0), (.south, 52), (.east, 48), (.north, 8), (.north, 47), (.north, 24), (.east, 73), (.right, 80), (.east, 1), (.east, 41), (.east, 98), (.east, 46), (.north, 44), (.west, 75), (.north, 35), (.west, 28), (.west, 62), (.left, 85), (.south, 8), (.north, 49), (.east, 84), (.right, 22), (.east, 96), (.right, 38), (.right, 70), (.north, 66), (.south, 75), (.east, 27), (.north, 76), (.east, 30), (.east, 85), (.north, 49)]
    
    func testFollowingDirections1() {
        let result = followingDirections(directions: directions1)
        let expected: (x: Int, y: Int) = (10, 5)
        XCTAssertEqual(result.0, expected.x)
        XCTAssertEqual(result.1, expected.y)
    }
    
    func testFollowingDirections2() {
        let result = followingDirections(directions: directions2)
        let expected: (x: Int, y: Int) = (0, 0)
        XCTAssertEqual(result.0, expected.x)
        XCTAssertEqual(result.1, expected.y)
    }
    
    
    func testFollowingDirections3() {
        let result = followingDirections(directions: directions3)
        let expected: (x: Int, y: Int) = (-5, 0)
        XCTAssertEqual(result.0, expected.x)
        XCTAssertEqual(result.1, expected.y)
    }
    
    func testFollowingDirections4() {
        let result = followingDirections(directions: directions4)
        let expected: (x: Int, y: Int) = (-5, -10)
        XCTAssertEqual(result.0, expected.x)
        XCTAssertEqual(result.1, expected.y)
    }
    
    func testFollowingDirections5() {
        let result = followingDirections(directions: directions5)
        let expected: (x: Int, y: Int) = (3, -10)
        XCTAssertEqual(result.0, expected.x)
        XCTAssertEqual(result.1, expected.y)
    }
    
    func testFollowingDirections6() {
        let result = followingDirections(directions: directions6)
        let expected: (x: Int, y: Int) = (0, -5)
        XCTAssertEqual(result.0, expected.x)
        XCTAssertEqual(result.1, expected.y)
    }
   
    func testFollowingDirections7() {
        let result = followingDirections(directions: directions7)
        let expected: (x: Int, y: Int) = (0, -5)
        XCTAssertEqual(result.0, expected.x)
        XCTAssertEqual(result.1, expected.y)
    }
    
    func testFollowingDirectionsExample() {
        let result = followingDirections(directions: example)
        print(result)
    }
}
