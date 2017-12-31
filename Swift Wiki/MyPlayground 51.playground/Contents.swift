//: Playground - noun: a place where people can play

import UIKit

extension Double {
    
    var kg: Double {
        return self
    }
    
    var ton: Double {
        return self / 1000.0
    }
    
    var gram: Double {
        return self * 1000
    }
    
    var pound: Double {
        return self * 2.2
    }
    
}

let oneKilogram = 1.0
oneKilogram.pound

let weight = 2.0.pound + 3.0.kg

struct Origin {
    var x: Double
    var y: Double
}

struct SideLength {
    var length: Double
}

struct Square {
    
    var origin: Origin
    var sideLength: SideLength
    
}

let square = Square(origin: Origin(x: 0.0, y: 0.0), sideLength: SideLength(length: 2.0))

extension Square {
    
    init(sidelength: SideLength) {
        self.init(origin: Origin(x: 0.0, y: 0.0), sideLength: sidelength)
    }
    
}

let anotherSquare = Square(sidelength: SideLength(length: 3.0))



































