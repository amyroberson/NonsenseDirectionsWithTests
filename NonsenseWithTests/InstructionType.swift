//
//  InstructionType.swift
//  NonsenseWithTests
//
//  Created by Amy Roberson on 12/3/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation


enum Instruction {
    case north
    case south
    case east
    case west
    case right
    case left
}

func turning(orientation: Instruction, direction: Instruction) -> Instruction {
    
    switch (orientation, direction){
    case (.north, .right):
        return .east
    case (.south, .right):
        return .west
    case (.west, . right):
        return .north
    case (.east, . right):
        return .south
    case (.north, .left):
        return .west
    case (.south, .left):
        return .east
    case (.west, .left):
        return .south
    case (.east, .left):
        return .north
    default:
        print("Error in direction input")
        return direction
    }
}

// Extra credit function 
/*func convertInstructionLeftRight(orientation: Instruction, cardinalDirection: Instruction) -> Instruction {
    if orientation == .north{
        switch cardinalDirection {
        case .north:
            return 
        case .south:
            return
        case .east:
            return
        case .west:
            return
        }
    }
    if orientation == .south {
        
    }
    if orientation == .east {
        
    }
    if orientation == .west{
        
    }
    return cardinalDirection // if not north/east/west/south it would be right or left
}
 */

