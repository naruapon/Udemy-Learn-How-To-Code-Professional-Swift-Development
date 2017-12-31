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

let generator = LotteryGenerator()
for _ in 0..<6 {
    print(generator.random())
}

protocol Switchable {
    
    mutating func toggleSwitch()
    
}

enum LightSwitch: Switchable {
    
    case On, Off
    
    mutating func toggleSwitch() {
        switch self {
        case .Off:
            self = .On
        case .On:
            self = .Off
        }
    }
    
}

var lightSwitch = LightSwitch.Off
lightSwitch.toggleSwitch()




