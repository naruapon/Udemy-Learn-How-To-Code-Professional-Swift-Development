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

var aPoint = Point(x: 2.0, y: 2.0)
var anotherPoint = Point(x: 4.0, y: 4.0)

let evenAnotherPoint = aPoint + anotherPoint
evenAnotherPoint.x
evenAnotherPoint.y

let negativePoint = -anotherPoint
negativePoint.x
negativePoint.y

aPoint += evenAnotherPoint
aPoint.x
aPoint.y