//: Playground - noun: a place where people can play

import UIKit

class Slots {
    
    static var freeSlots = 4
    
    static func giveAwaySlot() -> Bool {
        
        if freeSlots > 0 {
            --freeSlots
            return true
        } else {
            return false
        }
        
    }
    
    static func getBackSlot() {
        ++freeSlots
    }
    
}

class Player {
    
    init?() {
        
        if Slots.giveAwaySlot() {
            print("Joined the game")
        } else {
            return nil
        }
        
    }
    
    deinit {
        Slots.getBackSlot()
    }
    
}

var playerOne = Player()
var playerTwo = Player()
var playerThree = Player()
var playerFour = Player()
playerOne = nil
var playerFive = Player()















