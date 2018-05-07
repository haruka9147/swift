//
//  main.swift
//  Lesson2
//
//  Created by 北田晴佳 on 2018/05/07.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

import Foundation

//print("Hello, World!")

var MihoOrder: FastFoodMenuItem = .hamburger(numberOfPatties: 2)
var otherItem = FastFoodMenuItem.cookie

print(MihoOrder.isIncludedInSpecialOrder(number: 5))
print(MihoOrder.calories)
MihoOrder.switchToBeingACookie()

switch MihoOrder {
    case .hamburger(let patties):
        if patties > 2 {
            print("That's too much!")
        } else {
            print("\(patties) patties Burger!")
        }
    case .fries, .drink:
        print("Fries!")
    default:
        print("Something else")
//    case FastFoodMenuItem.cookie:
//        print("cookie!")
}

var x: String?

var y = x ?? "some"

switch x {
    case .none: y = "some"
    case .some(let data): y = data
}

var z = x?.uppercased()

switch x {
    case .none:
        z = nil
    case .some(let data):
        data.uppercased()
}
