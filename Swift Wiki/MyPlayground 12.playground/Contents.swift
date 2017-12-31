//: Playground - noun: a place where people can play

import UIKit

enum CompassPoint {
    
    case North, East, South, West
    
}

var direction = CompassPoint.North

direction = .West

switch direction {
case .North:
    print("North")
case .East:
    print("East")
case .South:
    print("South")
case .West :
    print("West")
}