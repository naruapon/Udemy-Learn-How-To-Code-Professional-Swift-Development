//: Playground - noun: a place where people can play

import UIKit

struct Stack<Element> {
    
    var items = [Element]()
    
    mutating func push(item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
    
}

extension Stack {
    
    var lastItem: Element? {
        
        return items.isEmpty ? nil : items[items.count - 1]
        
    }
    
}

protocol SomeProtocol {
}

class SomeClass {
}

func someFunction<T: SomeClass, U: SomeProtocol>(someT: T, someU: U) {
    //
}

func findIndex<T: Equatable>(array: [T], _ valueToFind: T) -> Int? {
    
    for (index,value) in array.enumerate() {
        if value == valueToFind {
            return index
        }
    }
    
    return nil
    
}

let intArray = [1,2,3,4]

findIndex(intArray, 5)














