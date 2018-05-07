//
//  Optionals.swift
//  Lesson2
//
//  Created by 北田晴佳 on 2018/05/07.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

import Foundation

enum MyOptional<T> {
    case none
    case some(T)
}

var hello: String?
var hello1: MyOptional<String> = .none

func a() -> String {
    print(hello!)
    
    switch hello1 {
    case .none: // crash
        break
    case .some(let data): return data
    }
    return ""
}
//print(hello!)

//switch hello1 {
//    case .none: // crash
//    case .some(let data): return data
//}

var hello2: String? = "hello"
var hello3: MyOptional<String> = .some("hello")
func b() -> String {
    if let greeting = hello2 {
        
    } else {
        
    }
    switch hello1 {
        case .none: // crash
            break
        case .some(let data): return data
    }
    return ""
}
//if let greeting = hello2 {
//
//} else {
//
//}

//switch hello1 {
//    case .none: // do nothing
//    case .some(let data): return data
//}

var hello4: String!
var hello5: MyOptional<String> = .none

func c() -> String {
    switch hello5 {
    case .none: // throw an error (crash)
        break
    case .some(let data): return data
    }
    return ""
}

//switch hello5 {
//case .none: // crash
//case .some(let data): return data
//}

