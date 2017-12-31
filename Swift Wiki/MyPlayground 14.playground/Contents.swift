//: Playground - noun: a place where people can play

import UIKit

enum FloatNumbers: Float {
    case OnePointTwo = 1.2
    case TwoPointThree = 2.3
}

enum CompassPoint: String {
    case North, East, South, West
}

let north = CompassPoint.North
north.rawValue

let onePointTwo = FloatNumbers.OnePointTwo
onePointTwo.rawValue

enum Cars: Int {
    case Fiat = 1, Mercedes, Ferrari
}

let mercedes = Cars.Mercedes
mercedes.rawValue

let someCar = Cars(rawValue: 5)
