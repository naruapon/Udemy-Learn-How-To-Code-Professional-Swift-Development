//: Playground - noun: a place where people can play

import UIKit

extension Int {
    
    func times(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
    
    mutating func timesTwo() {
        self = self * 2
    }
    
    subscript(var index: Int) -> Int {
        var decimal = 1
        
        for _ in 0..<index {
            decimal *= 10
        }
        
        return (self / decimal) % 10
        
    }
    
    enum Kind {
        case Negative, Positive
    }
    
    var kind: Kind {
        if self < 0 {
            return .Negative
        } else {
            return .Positive
        }
    }
    
}

let negative = -4

negative.kind












