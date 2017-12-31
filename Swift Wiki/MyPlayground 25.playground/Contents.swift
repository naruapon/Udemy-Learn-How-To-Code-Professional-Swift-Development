//: Playground - noun: a place where people can play

import UIKit

class Countdown {
    
    var time = 100
    
    func countdown() {
        time--
    }
    
    func countdownBy(amount: Int) {
        time -= amount
    }
    
    func reset() {
        time = 100
    }
    
}

let countdown = Countdown()
countdown.countdown()
countdown.time
countdown.countdownBy(40)
countdown.time
countdown.reset()
countdown.time