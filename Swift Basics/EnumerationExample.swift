//
//  EnumerationExample.swift
//  Swift Basics
//
//  Created by Herock Hasan on 21/8/21.
//
/*
 An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.
 */
import Foundation

/*
 Swift enumeration cases don’t have an integer value set by default, unlike languages like C and Objective-C. In the CompassPoint example above, north, south, east and west don’t implicitly equal 0, 1, 2 and 3. Instead, the different enumeration cases are values in their own right, with an explicitly defined type of CompassPoint
 */

enum CompassPoint {
    case north
    case south
    case east
    case west
}

//Multiple cases can appear on a single line, separated by commas:

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

/*
 Each enumeration definition defines a new type. Like other types in Swift, their names (such as CompassPoint and Planet) start with a capital letter. Give enumeration types singular rather than plural names, so that they read as self-evident:
 */


class EnumerationExample {
    
    var currentPoint  = CompassPoint.north
    init() {
        
    }
    
    func enumInSwitchStatement( point : CompassPoint)  {
        
        switch point {
        case .south: print("Its south")
        case .north : print("Its north")
        case .east : print("Its east")
        case .west: print("Its west")
            
        }
    }
}
