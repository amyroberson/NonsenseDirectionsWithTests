//
//  goingPlaces.swift
//  NonsenseWithTests
//
//  Created by Amy Roberson on 12/1/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation

func goingPlaces(instructions:[(turn: Instruction, distance: Int)]) -> (x: Int, y: Int) {
    var orientation = Instruction.north
    var x = 0 // East, West
    var y = 0 //North, South
    var results = ""
    
    for instruction in instructions {
        
        if instruction.turn == .left{
            orientation = (turning(orientation: orientation , direction: .left ))
        } else if instruction.turn == .right{
            orientation = (turning(orientation: orientation, direction: .right))
        } else {
         orientation = instruction.turn //extra credit 2, because the instructions would be cardinalDirections, so left and right would be skipped
        }

        switch orientation {
        case .north:
            y = y + instruction.distance
        case .south:
            y = y - instruction.distance
        case .east:
            x = x + instruction.distance
        case .west:
            x = x - instruction.distance
        default:
            print("Error in direction input")
        }
    }
    
    if x < 0 {
        results.append(" \(abs(x)) blocks south,")
    } else if x > 0{
        results.append(" \(x) blocks north,")
    } else {
        results.append("")
    }
    
    if y < 0 {
        results.append(" \(abs(y)) blocks west")
    } else if y > 0 {
        results.append(" \(y) blocks east")
    }
    
    print(results)
    return (x: x, y: y)
}



