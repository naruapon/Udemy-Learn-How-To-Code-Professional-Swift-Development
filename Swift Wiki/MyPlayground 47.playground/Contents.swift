//: Playground - noun: a place where people can play

import UIKit

func printThisAfterCall() {
    print("Defer successfull")
}


func someThrowingFunction() throws -> Int {
    
    defer {
        printThisAfterCall()
    }
        
    return 0
}

let x = try! someThrowingFunction()


let y: Int?

do {
    y = try someThrowingFunction()
} catch {
    y = nil
}
