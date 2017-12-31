//: Playground - noun: a place where people can play

import UIKit

protocol HasBreed {
    
    var breed: String { get }
    
}

class Dog: HasBreed {
    
    var breed: String = "Some Breed"
    
}