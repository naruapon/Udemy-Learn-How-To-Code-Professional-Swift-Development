//: Playground - noun: a place where people can play

import UIKit

struct Ball {
    
    let size: String
    
    init?(size: String) {
        if size.isEmpty {
            return nil
        }
        self.size = size
        
    }
    
}

class Thing {
    
    
    let description: String!
    
    init?(description: String) {
        self.description = description
        if description.isEmpty { return nil }
    }
    
}


let nilBall = Ball(size: "")

enum WeightUnit {
    
    case Kilogram, Pound
    
    init?(unit: Character) {
        switch unit {
            case "k":
            self = .Kilogram
            case "p":
            self = .Pound
        default:
            return nil
        }
    }
    
}

let nilUnit = WeightUnit(unit: "k")








