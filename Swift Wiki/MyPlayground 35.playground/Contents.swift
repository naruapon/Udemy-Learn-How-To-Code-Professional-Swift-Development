//: Playground - noun: a place where people can play

import UIKit

class SuperClass {
    
    var property: String
    
    init(parameter: String) {
        self.property = parameter
    }
    
    convenience init() {
        self.init(parameter: "Default")
    }
    
}

class SubClass: SuperClass {
    
    var subclassProperty: Int
    
    init(superParameter: String, ownParameter: Int) {
        self.subclassProperty = ownParameter
        super.init(parameter: superParameter)
        self.property = "Other Value"
    }
    
    override convenience init(parameter: String) {
        self.init(superParameter: parameter, ownParameter: 1)
    }
    
}

class SubSubClass: SubClass {
    
    var defaultProperty = true
    
}

let instance = SubSubClass()
instance.property
instance.subclassProperty









