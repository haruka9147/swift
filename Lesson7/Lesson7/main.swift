//
//  main.swift
//  Lesson7
//
//  Created by 北田晴佳 on 2018/05/09.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

import Foundation
// Value type
// [Enum] erate
//enum PrimaryColor: String {
//    // raw value
//    case red = "Red"
//    case blue = "Blue"
//    case green = "Green"
//    // associate value
//}

// Swift's Enums with associated values cannot have a raw value
enum PrimaryColor {
    // raw value
    case red(r: Int)
    case blue(b: Int, name: String)
    case green(g: Int)
    // associate value
}

//PrimaryColor.blue.rawValue
var color = PrimaryColor.red(r: 100)

switch color {
case .red(let value):
    print("Red has associated value: \(value)")
case .blue(let value, let name):
    print("It's Blue with \(value) and Name: \(name)")
case .green(let value):
    print("Green has associated value: \(value)")
}

