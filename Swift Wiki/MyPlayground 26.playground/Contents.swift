//: Playground - noun: a place where people can play

import UIKit

struct Car {
    
    var model = "Mercedes"
    
    mutating func changeModel(newModel: String) {
        self = Car(model: newModel)
    }
    
}

var car = Car()
car.changeModel("Porsche")
car.model

enum Speed {
    case slow, fast
    
    mutating func changeSpeed() {
        switch self {
        case .slow:
            self = .fast
        case .fast:
            self = .slow
        }
    }
}

var speed = Speed.slow
speed.changeSpeed()
speed