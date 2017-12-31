//: Playground - noun: a place where people can play

import UIKit

class Bird {
    
    var size = "small"
    
    var description: String {
        return "A \(size) sized bird"
    }
    
    func eats() {
        
        //Overridden in subclasses
        
    }
    
}

let bird = Bird()
bird.description

class Penguin: Bird {
    
    override init() {
        super.init()
        size = "medium"
    }
    
    let canDive = true
    
    override var description: String {
        return super.description + " that eats fish"
    }
    
    override func eats() {
        print("Fish")
    }
    
}

let penguin = Penguin()
penguin.description
penguin.eats()








