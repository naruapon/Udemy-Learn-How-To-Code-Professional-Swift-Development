//: Playground - noun: a place where people can play

import UIKit

func greet(person name: String, _ otherPerson: String) -> String {
    return "Hello, " + name + " and " + otherPerson + "!"
}

greet(person: "Joey", "Tim")

func addNumber(number: Int, toNumber: Int) {
    
}

addNumber(1, toNumber: 2)

func sayHelloWorld() -> String {
    return "Hello, World"
}

sayHelloWorld()

func sayGoodbye(person: String) {
    print("Goodbye \(person)")
}

sayGoodbye("Joey")