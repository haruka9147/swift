//
//  Ex.swift
//  Lesson2
//
//  Created by 北田晴佳 on 2018/05/07.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

import Foundation

class ex1 {
    // 1a)
    var moviesDict:Dictionary = ["Star Wars":"Geroge Lucas", "Point Break":"Kathryn Bigelow"]
    var movie = "Point Break"
    var director = moviesDict[movie]
    
    if let dire = director {
        print(dire)
    }
}


