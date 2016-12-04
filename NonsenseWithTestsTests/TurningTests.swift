//
//  TurningTests.swift
//  NonsenseWithTests
//
//  Created by Amy Roberson on 12/3/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import XCTest
@testable import NonsenseWithTests

class TurningTests: XCTestCase {
    
    func testTurningLeftFromNorth() {
        let result = turning(orientation: .north, direction: .left)
        let expected = Instruction.west
        XCTAssertEqual(result, expected)
        
    }
    
    
    func testTurningNorthFromNorth() {
        let result = turning(orientation: .north, direction: .north)
        let expected = Instruction.north
        XCTAssertEqual(result, expected)
        
    }
    
    func testTurningLeftFromEast() {
        let result = turning(orientation: .east, direction: .left)
        let expected = Instruction.north
        XCTAssertEqual(result, expected)
        
    }
    
    func testTurningRightFromEast() {
        let result = turning(orientation: .east, direction: .right)
        let expected = Instruction.south
        XCTAssertEqual(result, expected)
        
    }
    
    func testTurningEastFromWest() {
        let result = turning(orientation: .west, direction: .east)
        let expected = Instruction.east
        XCTAssertEqual(result, expected)
        
    }
    func testTurningSouthFromEast() {
        let result = turning(orientation: .east, direction: .south)
        let expected = Instruction.south
        XCTAssertEqual(result, expected)
    }
    
}
