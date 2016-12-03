//
//  FacingDirection.swift
//  NonsenseWithTests
//
//  Created by Amy Roberson on 12/1/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation

enum FacingDirection {
    case north
    case south
    case east
    case west
}

/*func turnRight(direction: FacingDirection) -> FacingDirection {
    switch direction {
    case .north:
        return .east
    case .south:
        return .west
    case .west:
        return .north
    case .east:
        return .south
    }
}

func turnLeft(direction: Instruction) -> Instruction {
    switch direction {
    case .north:
        return .west
    case .south:
        return .east
    case .west:
        return .south
    case .east:
        return .north
        
    }
}*/

func turning(direction: Instruction, rightLeft: Instruction) -> Instruction {
    switch (direction, rightLeft){
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
        return .north
    }
    
    
}

