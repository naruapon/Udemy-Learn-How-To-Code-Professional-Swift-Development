//: Playground - noun: a place where people can play

import UIKit

class PrintMedium {
    
    var name: String
    init(name: String) {
        self.name = name
    }
    
}

class Book: PrintMedium {
    var author: String
    
    init(name: String, author: String) {
        self.author = author
        super.init(name: name)
    }
}

class Newspaper: PrintMedium {
    var publisher: String
    
    init(name: String, publisher: String) {
        self.publisher = publisher
        super.init(name: name)
    }
    
}

var anyobjectArray: [AnyObject] = [Newspaper(name: "New York Times", publisher: "Some Publisher"), Newspaper(name: "London Times", publisher: "English Publisher")]

for newspaper in anyobjectArray as! [Newspaper] {
    print(newspaper.publisher)
}

var anyArray: [Any] = [1, 2.3, "String", Book(name: "Harry Potter", author: "J.K. Rowling"),(3.4, 2.5), {(name: String) -> String in "Hello, \(name)"}]


for thing in anyArray {
    switch thing {
    case 1 as Int:
        print("One is an Int")
    case 2.3 as Double:
        print("2.3 is a Double")
    case let someString as String:
        print("\(someString) is a string")
    case let book as Book:
        print("\(book.name) is a Book")
    case let stringClosure as String -> String:
        print(stringClosure("Joey"))
    default:
        print("Something else")
    }
}





















