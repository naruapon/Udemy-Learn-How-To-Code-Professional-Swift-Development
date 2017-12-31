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

var stringStack = Stack<String>()
stringStack.push("Test")
stringStack.push("Test Two")
stringStack.pop()

extension Stack {
    
    var lastItem: Element? {
        
        return items.isEmpty ? nil : items[items.count - 1]
        
    }
    
}

stringStack.lastItem