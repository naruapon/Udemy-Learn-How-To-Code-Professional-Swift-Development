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

protocol Lottery {
    
    var lotteryGenerator: LotteryNumbersGenerator { get }
    func play()
    
}

protocol LotteryDelegate {
    
    func numberMatched(number: Int)
    func numberDidNotMatch(number: Int)
    
}

class LotteryGame: Lottery {
    
    let winningNumbers = [6,14,26,49,24,35]
    
    let lotteryGenerator = LotteryNumbersGenerator(numbers: 6, generator: LotteryGenerator())
    
    var delegate: LotteryDelegate?
    
    func play() {
        
        let pickedNumbers = lotteryGenerator.choose()
        
        for number in pickedNumbers {
            
            if winningNumbers.contains(number) {
                delegate?.numberMatched(number)
            } else {
                delegate?.numberDidNotMatch(number)
            }
            
        }
        
    }
    
}

class LotteryGameTracker: LotteryDelegate {
   
    func numberMatched(number: Int) {
        print("\(number) is a winning number!")
    }
    
    func numberDidNotMatch(number: Int) {
        print("\(number) is not a winning number!")
    }
    
}

let tracker = LotteryGameTracker()
let game = LotteryGame()
game.delegate = tracker
game.play()

protocol Describable {
    var description: String { get }
}

extension LotteryNumbersGenerator: Describable {
    
    var description: String {
        return "A generator with \(numbers) numbers"
    }
    
}

lottery.description

struct Dog {
    
    var description = "A four-legged animal"
    
}

extension Dog: Describable {
    
}

let describedDog: Describable = Dog()

let describedArray: [Describable] = [describedDog,lottery]

for thing in describedArray {
    print(thing.description)
}

protocol EmojiDescribable: Describable {
    
    var emojiDescription: String { get }
    
}

extension Dog: EmojiDescribable {
    
    var emojiDescription: String {
        return "🐶"
    }
    
}

protocol Employee {
    var name: String {get}
}

protocol Position {
    var position: String {get}
}

struct Person: Employee,Position {
    
    var name: String
    var position: String
    
}

func printEmployeePosition(person: protocol<Employee,Position>) {
    print("Name: \(person.name), Position: \(person.position)")
}

let john = Person(name: "John", position: "CEO")
printEmployeePosition(john)

protocol HasName {
    var name: String {get}
}

class Child: HasName {
    var name = "Lisa"
}

class Pet: HasName {
    var name = "Rex"
}

class Building {
    
}

let anyobject: [AnyObject] = [Child(),Pet(),Building()]

for item in anyobject {
    
    if let named = item as? HasName {
        print("\(named.name) has a name")
    } else {
        print("There is no name")
    }
    
}





















