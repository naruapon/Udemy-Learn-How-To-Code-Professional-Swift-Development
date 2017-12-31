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

var prints = [Book(name: "Harry Potter", author: "J. K. Rowling"), Newspaper(name: "New York Times", publisher: "Some Publisher"), Book(name: "Encyclopdia", author: "Science")]

for item in prints {
    if item is Newspaper {
        print("It's a newspaper")
    } else if item is Book {
        print("It's a book")
    }
}

for item in prints {
    if let newspaper = item as? Newspaper {
        print(newspaper.publisher)
    } else if let book = item as? Book {
        print(book.author)
    }
}
























