//: Playground - noun: a place where people can play

import UIKit

struct Table {
    
    let rows: Int, columns: Int
    
    var table: [String]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        table = Array(count: rows*columns, repeatedValue: "")
    }
    
    func tableContainsRow(row: Int, andColumn: Int) -> Bool {
        return row >= 0 && row < rows && andColumn >= 0 && andColumn < columns
    }
    
    subscript(row: Int, column: Int) -> String {
        
        get {
            if tableContainsRow(row, andColumn: column) {
                return table[(row*column) + column]
            } else {
                return "Out of Range"
            }
        }
        
        set {
            if tableContainsRow(row, andColumn: column) {
                table[(row*column) + column] = newValue
            } else {
                print("Out of range")
            }
        }
        
    }
    
}

var table = Table(rows: 4, columns: 4)
table[0,0] = "Test"
table[4,0] = "Test"











