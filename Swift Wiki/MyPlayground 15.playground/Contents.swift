//: Playground - noun: a place where people can play

import UIKit

indirect enum ArithemeticExpression {
    
    case Number(Int)
    
    case Addition(ArithemeticExpression,ArithemeticExpression)
    
    case Division(ArithemeticExpression,ArithemeticExpression)
    
}

func evaluate(expression: ArithemeticExpression) -> Int {
    switch expression {
    case .Number(let number):
        return number
    case .Addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .Division(let left, let right):
        return evaluate(left) / evaluate(right)
    }
}

// (10 + 2) / 4

let ten = ArithemeticExpression.Number(10)
let two = ArithemeticExpression.Number(2)
let sum = ArithemeticExpression.Addition(ten, two)
let division = ArithemeticExpression.Division(sum, ArithemeticExpression.Number(4))

evaluate(division)