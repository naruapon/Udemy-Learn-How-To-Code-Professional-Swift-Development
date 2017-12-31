//: Playground - noun: a place where people can play

import Foundation

struct Point {
    
    var x: Double
    var y: Double
    
}

func +(left: Point, right: Point) -> Point {
    return Point(x: left.x + right.x, y: left.y + right.y)
}

prefix func -(point: Point) -> Point {
    return Point(x: -point.x, y: -point.y)
}

func +=(inout left: Point, right: Point) {
    left = left + right
}

func ==(left: Point, right: Point) -> Bool {
    return left.x == right.x && left.y == right.y
}

func !=(left: Point, right: Point) -> Bool {
    return !(left == right)
}

prefix operator +++ {}

prefix func +++(inout point: Point) -> Point {
    
    point += point
    
    return point
    
}

var aPoint = Point(x: 2.0, y: 2.0)
+++aPoint
aPoint.x
aPoint.y

infix operator +- { associativity left precedence 140 }

func +-(left: Point, right: Point) -> Point {
    return Point(x: left.x + right.x, y: left.y - right.y)
}

var anotherPoint = Point(x: 4.0, y: 1.0)

let newPoint = aPoint +- anotherPoint
newPoint.x
newPoint.y



























