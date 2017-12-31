//: Playground - noun: a place where people can play

import Foundation

// Bitwise NOT Operator

let initialBits: UInt8 = 0b00001111
let invertedBits = ~initialBits

// Bitwise AND Operator

let firstSixBits: UInt8 = 0b11111100
let lastSixBits: UInt8 = 0b00111111
let middleFourBits = firstSixBits & lastSixBits

// Bitwise OR Operator

let someBits: UInt8 = 0b10110010
let moreBits: UInt8 = 0b01011110
let combinedBits = someBits | moreBits

// Bitwise XOR Operator

let firstBits: UInt8 = 0b00010100
let otherBits: UInt8 = 0b00000101
let outputBits = firstBits ^ otherBits