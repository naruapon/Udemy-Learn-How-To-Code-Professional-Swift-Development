//: Playground - noun: a place where people can play

import UIKit

struct BlackjackCard {
    
    enum Suit: Character {
        case Spades = "s"
        case Hearts = "h"
        case Diamonds = "d"
        case Clubs = "c"
    }
    
    enum Rank: Int {
        
        case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
        
        case Jack, Queen, King, Ace
        
        struct Values {
            let first: Int
            let second: Int?
        }
        
        var values: Values {
            switch self {
            case .Ace:
                return Values(first: 1, second: 11)
            case .Jack, .Queen, .King:
                return Values(first: 10, second: nil)
            default:
                return Values(first: self.rawValue, second: nil)
            }
        }
        
    }
    
    let rank: Rank, suit: Suit
    
    var description: String {
        
        var output = "suit is \(suit.rawValue),"
        
        output += " value is \(rank.values.first)"
        
        if let second = rank.values.second {
            output += " or \(second)"
        }
        
        return output
        
    }
    
}

let kingOfHearts = BlackjackCard(rank: .Ace, suit: .Hearts)

kingOfHearts.description

let clubSymbol = BlackjackCard.Suit.Clubs.rawValue











