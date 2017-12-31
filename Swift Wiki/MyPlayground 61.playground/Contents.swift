//: Playground - noun: a place where people can play

import UIKit

func swapTwoInts(inout a: Int, inout _ b: Int) {
    let tempA = a
    a = b
    b = tempA
}


func swapTwoStrings(inout a: String, inout _ b: String) {
    let tempA = a
    a = b
    b = tempA
}

func swapTwoValues<T>(inout a: T, inout _ b: T) {
    let tempA = a
    a = b
    b = tempA
}

var integer1 = 2
var integer2 = 4

swapTwoValues(&integer1, &integer2)

var string1 = "Hello"
var string2 = "World"

swapTwoValues(&string1, &string2)