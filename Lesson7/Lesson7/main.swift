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

enum PrimaryColor {
    // raw value
    case red(r: Int)
    case blue(b: Int, name: String)
    case green(g: Int)
    // associate value
}

//PrimaryColor.blue.rawValue

