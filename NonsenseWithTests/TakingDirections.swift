//
//  TakingDirections.swift
//  NonsenseWithTests
//
//  Created by Amy Roberson on 12/3/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation

func takingDirections(directions: [(orientation: CardinalDirection, distance: Int)]) -> (x:Int, y: Int){
    
    var x = 0
    var y = 0
    var results = ""
    
    for i in directions {
        var facing = i.orientation
        //needs to set facing
        facing = i.orientation
        
        
        // and or subtract to x or y
        switch facing {
        case .north:
            y = y + i.distance
        case .south:
            y = y - i.distance
        case.east:
            x = x + i.distance
        case .west:
            x = x - i.distance
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
    
    return (x,y)
}
