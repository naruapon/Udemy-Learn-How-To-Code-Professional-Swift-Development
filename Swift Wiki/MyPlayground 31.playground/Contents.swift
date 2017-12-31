//: Playground - noun: a place where people can play

import UIKit

struct Kilogram {
    
    let weight: Double
    
    var description: String?

    
}

var weight = Kilogram(weight: 20.0, description: "Description")

struct Coin {
    
    var amount = 0
    
    var weight = 0
    
    init(amount: Int, weight: Int) {
        self.amount = amount
        self.weight = weight
    }
    
    init(coins: Int) {
        self.init(amount: coins, weight: coins*5)
    }
    
    init() {
        
    }
    
}

let coin1 = Coin()
let coin2 = Coin(amount: 10, weight: 50)
let coin3 = Coin(coins: 10)







