//: Playground - noun: a place where people can play

import UIKit

enum Barcode {
    case UPCA(Int,Int,Int,Int)
    case QRCode(String)
}

var productBarcode = Barcode.UPCA(7, 82943, 38294, 2)


switch productBarcode {
    
case let .UPCA( numberSystem,  manufacturer,  product,  check):
    print("\(numberSystem),\(manufacturer),\(product),\(check)")
case .QRCode(let code):
    print("\(code)")
    
}