//: Playground - noun: a place where people can play

import UIKit

struct NumberRange {
    var firstNumber: Int
    let length: Int
}

var rangeOfEightNumbers = NumberRange(firstNumber: 4, length: 8)

rangeOfEightNumbers.firstNumber = 5

var rangeOfFiveNumbers = NumberRange(firstNumber: 4, length: 5)

rangeOfFiveNumbers.firstNumber = 6