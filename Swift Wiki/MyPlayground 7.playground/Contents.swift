//: Playground - noun: a place where people can play

import UIKit



func chooseStep(backwards: Bool) -> (Int) -> Int {
    
    func stepBackward(input: Int) -> Int {
        return input - 1
    }
    
    func stepForward(input: Int) -> Int {
        return input + 1
    }
    
    return backwards ? stepBackward : stepForward
    
}



var value = 4
let moveToZero = chooseStep(value > 0)

while value != 0 {
    print(value)
    value = moveToZero(value)
}

print(value)