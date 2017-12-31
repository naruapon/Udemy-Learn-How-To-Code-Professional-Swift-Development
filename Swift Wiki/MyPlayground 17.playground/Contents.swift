//: Playground - noun: a place where people can play

import UIKit

struct AudioOutput {
    
    var level = 0
    var pan = 0
    
}

class AudioMode {
    
    var audioOutput = AudioOutput()
    var beatsPerMinute = 120.0
    var sampleRate = 48000
    var name: String?
    
}

let someOutput = AudioOutput()
let someMode = AudioMode()

someOutput.level
someMode.audioOutput.level = 1
someMode.audioOutput.level

let someOtherOutput = AudioOutput(level: 1, pan: 1)