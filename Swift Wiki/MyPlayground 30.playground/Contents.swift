//: Playground - noun: a place where people can play

import UIKit

struct Kilogram {
    
    let weight: Double
    
    var description: String?
    
    init(fromPounds: Double) {
        weight = fromPounds / 2.2
    }
    
}

var weight = Kilogram(fromPounds: 45)
weight.weight
weight.description = "That's not that heavy"