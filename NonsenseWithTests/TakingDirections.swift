//
//  TakingDirections.swift
//  NonsenseWithTests
//
//  Created by Amy Roberson on 12/3/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation

func takingDirections(directions: [(instruction: Instruction, distance: Int)]) -> (x:Int, y: Int){
    
    var x = 0
    var y = 0
    var results = ""
    var facing: Instruction = .north
    
    for i in directions {
        
        //handles format change for extra credit 1 and 3
        if facing == .north{
            if i.instruction == .left{
                facing = .west
            } else if i.instruction == .right{
                facing = .east
            } else {
                facing = i.instruction
            }
        } else if facing == .east{
            if i.instruction == .left{
                facing = .north
            } else if i.instruction == .right{
                facing = .south
            } else {
                facing = i.instruction
            }
        } else if facing == .south{
            if i.instruction == .left{
                facing = .east
            } else if i.instruction == .right{
                facing = .west
            } else {
                facing = i.instruction
            }
        }else if facing == .west{
            if i.instruction == .left{
                facing = .south
            } else if i.instruction == .right{
                facing = .north
            } else {
                facing = i.instruction
            }
        }
        
        switch facing {
        case .north:
            y = y + i.distance
        case .south:
            y = y - i.distance
        case.east:
            x = x + i.distance
        case .west:
            x = x - i.distance
        default:
            print("Error in instruction input")
        }
    }
    
    if y < 0 {
        results.append(" \(abs(y)) blocks south,")
    } else if y > 0 {
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
    
    return (x,y)
}
