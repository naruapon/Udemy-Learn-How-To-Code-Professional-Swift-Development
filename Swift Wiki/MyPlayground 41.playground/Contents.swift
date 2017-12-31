//: Playground - noun: a place where people can play

import UIKit

class Owner {
    
    let name: String
    
    var pet: Pet?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) deinitialised")
    }
    
}

class Pet {
    
    let kind: String
    
    weak var owner: Owner?
    
    init(kind: String) {
        self.kind = kind
    }
    
    deinit {
        print("\(kind) deinitialised")
    }
    
}

var harry: Owner?
var dog: Pet?

harry = Owner(name: "Harry")
dog = Pet(kind: "Dog")

harry!.pet = dog
dog!.owner = harry

harry = nil
dog = nil











