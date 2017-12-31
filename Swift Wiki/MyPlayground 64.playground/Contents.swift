//: Playground - noun: a place where people can play

import UIKit

protocol Container {
    
    typealias ItemType
    
    mutating func append(item: ItemType)
    
    var count: Int {get}
    
    subscript(i: Int) -> ItemType {get}
    
}

struct Stack<Element>: Container {
    
    var items = [Element]()
    
    mutating func push(item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
    
    // Container Protocol
    
    mutating func append(item: Element) {
        self.push(item)
    }
    
    var count: Int {
        return items.count
    }
    
    subscript(i: Int) -> Element {
        return items[i]
    }
    
}

extension Array: Container {
    
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


































