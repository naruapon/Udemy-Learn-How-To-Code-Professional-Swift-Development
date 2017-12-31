//: Playground - noun: a place where people can play

import UIKit

class Animal {
    
    let species: String
    
    init(species:String) {
        self.species = species
        print("\(species) initialized")
    }
    
    deinit {
        print("\(species) deinitialised")
    }
    
}

var animal1: Animal?
var animal2: Animal?
var animal3: Animal?

animal1 = Animal(species: "Lion")
animal2 = animal1
animal3 = animal1

animal1 = nil
animal2 = nil
animal3 = nil