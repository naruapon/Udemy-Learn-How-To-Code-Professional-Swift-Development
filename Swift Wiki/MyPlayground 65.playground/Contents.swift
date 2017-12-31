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

func allItemsMatch<C1: Container, C2: Container where C1.ItemType == C2.ItemType, C1.ItemType: Equatable>(firstContainer: C1, _ secondContainer: C2) -> Bool {
    
    if firstContainer.count != secondContainer.count {
        return false
    }
    
    for i in 0..<firstContainer.count {
        
        if firstContainer[i] != secondContainer[i] {
            return false
        }
        
    }
    
    return true
    
}

let integerArray = [1,2,3]
var integerStack = Stack<Int>()
integerStack.push(1)
integerStack.push(2)
integerStack.push(3)
integerStack.pop()

allItemsMatch(integerArray, integerStack)
































