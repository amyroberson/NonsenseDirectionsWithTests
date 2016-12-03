
//
//  goingDirections.swift
//  NonsenseWithTests
//
//  Created by Amy Roberson on 12/2/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation


func goingPlaces(instructions:[(turn: Turn, distance: Int)])  {
    var facing = Direction.north
    var x = 0 // East, West
    var y = 0 //North, South
    var results = ""
    
    for instruction in instructions {
        
        facing = turning(direction: facing , rightLeft: instruction.turn)
        
        switch facing {
        case .north:
            y = y + instruction.distance
        case .south:
            y = y - instruction.distance
        case .east:
            x = x + instruction.distance
        case .west:
            x = x - instruction.distance
        }
    }
    
    if x < 0 {
        results.append(" \(abs(x)) blocks west")
    } else if x > 0{
        results.append(" \(x) blocks east")
    } else {
        results.append("")
    }
    
    if y < 0 {
        results.append(" \(abs(y)) blocks south")
    } else if y > 0 {
        results.append(" \(y) blocks north")
    }
    print(results)
    
}
