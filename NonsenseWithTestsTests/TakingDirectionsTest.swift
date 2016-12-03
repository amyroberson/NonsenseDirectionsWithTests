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
    
    let directions: [(CardinalDirection, Int)] = [(.north, 5), (.east, 10)]
    
    func testTakingDirections1() {
        let result = takingDirections(directions: directions)
        let expectedResult = (10, 5)
        XCTAssertEqual(result.x, expectedResult.0)
        XCTAssertEqual(result.y, expectedResult.1)
    }
    
}
