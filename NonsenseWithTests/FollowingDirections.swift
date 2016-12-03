//
//  FollowingDirections.swift
//  NonsenseWithTests
//
//  Created by Amy Roberson on 12/3/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation

func followingDirections(directions: [(instruction: Instruction, distance: Int)]) -> (Int, Int) {
    var x = 0
    var y = 0
    var orientation = Instruction.north
    var results = ""
    
    for i in directions {
        
        if i.instruction == .left || i.instruction == .right {
            orientation = turning(orientation: orientation, direction: i.instruction)
        } else {
            orientation = i.instruction
        }
        
        switch orientation {
        case .north:
            y = y + i.distance
        case .south:
            y = y - i.distance
        case.east:
            x = x + i.distance
        case .west:
            x = x - i.distance
        default:
            break
            
            
        }
        
    }
    
    if y < 0 {
        results.append(" \(abs(y)) blocks south,")
    } else if y > 0{
        results.append(" \(y) blocks north,")
    } else {
        results.append("")
    }
    
    if x < 0 {
        results.append(" \(abs(x)) blocks west")
    } else if x > 0 {
        results.append(" \(x) blocks east")
    }
    
    
    print(results)
    return (x, y)
}
