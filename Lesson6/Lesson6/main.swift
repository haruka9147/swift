//
//  main.swift
//  Lesson6
//
//  Created by 北田晴佳 on 2018/05/09.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

import Foundation
// class Movie : Art, Hashable { 
class Movie {
    // Class - all properties have to be initialized. (initial value)
    // 1. give all properties initial values
    // 2. make properties optional
    // 3. make initializer (constructor)
    // *Stored properties
    var title: String = "" { // not set
         // Properties Observers
        didSet {
            print("Price is changed!")
        }
        willSet {
            print("Price is about to be changed!")
        }
    }
    private var releaseYear: Int // not access, get
    var director: String? // let dierctor: String? = nil (x)
    let genre: String
    // *Computed properties: no storage
    // by default (read-only)
    
    var price: Int {
        get {
            switch self.releaseYear {
                case 1990...2000:
                    return 5
                case 2001...2010:
                    return 8
                case 2011...2018:
                    return 15
                default:
                    return 3
            }
        }
        set(newPrice) {
            if newPrice > 50 {
                self.title = title + " (Popular)"
            }
        }
    }
    
    init(title: String, director: String, genre: String, releaseYear: Int = 2018) {
        self.title = title
        self.releaseYear = releaseYear
        self.director = director
        self.genre = genre
    }
}

let m1 = Movie(title: "Title", director: "James", genre: "Romance", releaseYear: 1997)
m1.title = "Avatar"
m1.price = 30
print(m1.price)

