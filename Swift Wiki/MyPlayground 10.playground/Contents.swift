//: Playground - noun: a place where people can play

import UIKit

var names = ["Timmi","Joey","Jesse","Tom","Anna","Alexander"]

var reversed = names.sort() {
    $0 > $1
}

reversed

let digitNames = [0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]

let numberArray = [10, 2, 8, 15, 32]

let strings = numberArray.map {
    (var number: Int) -> String in
    var output = ""
    while number > 0 {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    
    return output
}