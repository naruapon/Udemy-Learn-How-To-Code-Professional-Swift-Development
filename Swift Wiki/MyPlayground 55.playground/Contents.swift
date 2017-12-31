//: Playground - noun: a place where people can play

import UIKit

protocol RandomGenerator {
    func random() -> Int
}

class LotteryGenerator: RandomGenerator {
    func random() -> Int {
        return Int(arc4random_uniform(UInt32(49)) + 1)
    }
}

class LotteryNumbersGenerator {
    
    let numbers: Int
    
    let generator: RandomGenerator
    
    init(numbers: Int, generator: RandomGenerator) {
        self.numbers = numbers
        self.generator = generator
    }
    
    func choose() -> [Int] {
        var numberArray = [Int]()
        for _ in 0..<numbers {
            numberArray.append(generator.random())
        }
        return numberArray
    }
    
}

let lottery = LotteryNumbersGenerator(numbers: 6, generator: LotteryGenerator())

let winningNumbers = lottery.choose()



