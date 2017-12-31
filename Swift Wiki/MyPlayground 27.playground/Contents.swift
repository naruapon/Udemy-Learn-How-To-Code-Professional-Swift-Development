//: Playground - noun: a place where people can play

import UIKit

class SomeClass {
    
    static func someClassMethod() {
        
    }
    
}

SomeClass.someClassMethod()

struct ProgressTracker {
    
    static var progress = 0
    
    static func progressBy(amount: Int) {
        
        progress += amount
        
    }
    
    var currentProgress = 0
    
    mutating func updateCurrentProgress(progress: Int) {
        
        currentProgress += progress
        
    }
    
}

class Worker {
    
    
    var tracker = ProgressTracker()
    
    let workerName: String
    
    func achievedProgress(amount: Int) {
        ProgressTracker.progressBy(amount)
        tracker.updateCurrentProgress(amount)
    }
    
    init(name: String) {
        workerName = name
    }
    
}

var worker = Worker(name: "John")
worker.achievedProgress(10)
worker.tracker.currentProgress
ProgressTracker.progress

var workerTwo = Worker(name: "Anna")
workerTwo.achievedProgress(20)
workerTwo.tracker.currentProgress
ProgressTracker.progress












