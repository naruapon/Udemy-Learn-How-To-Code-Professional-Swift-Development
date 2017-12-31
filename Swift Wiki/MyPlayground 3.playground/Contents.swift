//: Playground - noun: a place where people can play

import UIKit

func addAndSubtract(number: Int, andNumber: Int) -> (sum: Int, difference: Int) {
    
    return (number + andNumber, number - andNumber)
    
}

let sumDif = addAndSubtract(4, andNumber: 2)
sumDif.sum
sumDif.difference

func addAndMultiply(numbers: [Int]) -> (sum: Int, product: Int)? {
    
    if numbers.isEmpty {
        return nil
    }
    
    var currentSum = numbers[0]
    var currentProduct = numbers[0]
    
    for number in 1..<numbers.count {
        currentSum += numbers[number]
        currentProduct *= numbers[number]
    }
    
    return (currentSum, currentProduct)
    
}

addAndMultiply([])