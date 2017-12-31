//: Playground - noun: a place where people can play

import UIKit

func add(numbers: Int..., var toNumber: Int) -> Int {
    
    for number in numbers {
        toNumber += number
    }
    
    return toNumber
    
}

add(1,2,3, toNumber: 5)

func swap(inout a: Int, inout _ b: Int) {
    
    let tempA = a
    a = b
    b = tempA
    
}

var someInt = 2
var anotherInt = 4

swap(&someInt, &anotherInt)

someInt
anotherInt