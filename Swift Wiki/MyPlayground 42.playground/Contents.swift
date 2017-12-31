//: Playground - noun: a place where people can play

import UIKit

class Parent {
    let name: String
    var child: Child?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) deinitialised")
    }
    
}

class Child {
    let name: String
    unowned let parent: Parent
    
    init(name: String, parent: Parent) {
        self.name = name
        self.parent = parent
    }
    
    deinit {
        print("\(name) deinitialised")
    }
    
}

var anna: Parent?

anna = Parent(name: "Anna")
anna!.child = Child(name: "Lisa", parent: anna!)

anna = nil




