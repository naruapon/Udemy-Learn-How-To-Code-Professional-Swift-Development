//: Playground - noun: a place where people can play

import UIKit

func addNumber(number: Int, toNumber: Int) -> Int {
    return number + toNumber
}

func multiplyNumber(number: Int, byNumber: Int) -> Int {
    return number * byNumber
}

/*  
    Type
    (Int,Int) -> Int
*/

func sayHelloWorld() {
    
}

// () -> Void

var mathFunction: (Int,Int) -> Int = addNumber

mathFunction = multiplyNumber

mathFunction(2,4)

var anotherMathFunction = addNumber

func printResult(mathFunction: (Int,Int) -> Int, _ a: Int, _ b: Int) {
    print(mathFunction(a,b))
}

printResult(multiplyNumber, 2, 4)