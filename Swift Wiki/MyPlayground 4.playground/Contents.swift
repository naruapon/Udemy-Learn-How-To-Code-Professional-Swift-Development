//: Playground - noun: a place where people can play

import UIKit

func sayHello(to person: String, and anotherPerson: String) -> String {
    
    return "Hello, " + person + " and " + anotherPerson
    
}

sayHello(to: "Tim", and: "Joey")

func justAFunction(number: Int = 8) -> Int {
    return number
}

justAFunction()

func add(numbers: Double...) -> Double {
    
    var sum: Double = 0
    
    for number in numbers {
        sum += number
    }
    
    return sum
    
}

add()