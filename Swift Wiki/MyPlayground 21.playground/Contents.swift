//: Playground - noun: a place where people can play

import UIKit

class ComplexClass {
    var propertyName = "SomeName"
}

class BasicClass {
    var basicArray = [String]()
    lazy var complexClass = ComplexClass()
}

let basic = BasicClass()
basic.basicArray.append("String")

print(basic.complexClass.propertyName)