//: Playground - noun: a place where people can play

import UIKit

class Thing {
    
    
    var description: String?
    
    init() {
        
    }
    
    init?(description: String) {
        self.description = description
        if description.isEmpty { return nil }
    }
    
}

class DescribedThing: Thing {
    
    override init() {
        super.init()
        self.description = "Description"
    }
    
    override init(description: String) {
        super.init()
        if description.isEmpty {
            self.description = "Description"
        } else {
            self.description = description
        }
    }
    
}

let aThing = DescribedThing(description: "")
aThing.description

class Item: Thing {
    
    let amount: Int!
    
    init?(description: String, amount: Int) {
        
        self.amount = amount
        super.init(description: description)
        if self.amount < 1 { return nil }
        
    }
    
}

let instanceOne = Item(description: "String", amount: 1)
let instanceTwo = Item(description: "", amount: 2)
let instanceThree = Item(description: "String", amount: 0)