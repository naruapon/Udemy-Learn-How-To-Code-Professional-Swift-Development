//: Playground - noun: a place where people can play

import UIKit

class SomeClass {
    
    static var storedTypeProperty = 18
    
    static var computedTypeProperty: String {
        return "Hello, World"
    }
    
    class var computedTypePropertyTwo: String {
        return "This can be overridden in subclasses"
    }
    
}

struct NumberPad {
    
    
    static var maxInput = 20
    static var minInput = 0
    
    var currentInput: Int {
        
        didSet {
            if currentInput > NumberPad.maxInput {
                currentInput = NumberPad.maxInput
            } else if currentInput < NumberPad.minInput {
                currentInput = NumberPad.minInput
            }
        }
        
    }
    
}

var numberPad = NumberPad(currentInput: 3)
numberPad.currentInput = 15
numberPad.currentInput




