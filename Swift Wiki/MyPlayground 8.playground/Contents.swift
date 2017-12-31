//: Playground - noun: a place where people can play

import UIKit

var names = ["Timmi","Joey","Jesse","Tom","Anna","Alexander"]

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}

var reversed = names.sort({ (s1: String, s2: String) -> Bool in
    return s1 > s2
})

reversed