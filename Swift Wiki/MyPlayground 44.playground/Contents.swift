//: Playground - noun: a place where people can play

import UIKit

enum ShopError: ErrorType {
    case ItemNotFound
    case NotEnoughMoney(missing: Int)
    case NotAvailable
}

throw ShopError.NotEnoughMoney(missing: 3)