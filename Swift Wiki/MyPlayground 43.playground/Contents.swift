//: Playground - noun: a place where people can play

import UIKit

class Restaurant {
    
    var address: Address?
    
}

class Address {
    
    var street = "Infinity Loop"
    
    //Later
    
    var state: State?
    
}

class State {
    
    let name = "Some State"
    
}

let restaurant = Restaurant()

restaurant.address = Address()

restaurant.address?.state = State()

restaurant.address?.street
//restaurant.address!.street

if let address = restaurant.address {
    print(address)
} else {
    print("Address could not be found")
}

if let state = restaurant.address?.state?.name {
    print("The state is \(state)")
} else {
    print("The state could not be found")
}



