//: Playground - noun: a place where people can play

import UIKit

struct Time {
    
    var seconds: Double
    
    var minutes: Double {
        
        get {
            return seconds / 60
        }
        
        set(newMinutes) {
            seconds = newMinutes * 60
        }
        
    }
    
    var hours: Double {
        
        return seconds / (60*60)

        
    }
    
}

var time = Time(seconds: 120)
time.minutes = 5
time.seconds
time.minutes
time.seconds
time.hours






