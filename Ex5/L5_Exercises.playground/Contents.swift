//: # Lesson 5 Exercises - Defining and Calling Functions

import UIKit

//: __Problem 1.__
//:
//:Earlier we used the method, removeAtIndex() to remove the first letter of a string. This method belongs to the String class. See if you can use this same method to return the last letter of a string.
func removeAtIndex(_ str: String) -> Character {
    return str[str.index(str.endIndex, offsetBy: -1)]
}
//:Test out your discovery below by returning the last letter of the String, "bologna".
var word = "bologna"
word.startIndex
removeAtIndex(word)

//: __Problem 2__
//:
//: Write a function called combineLastCharacters. It should take in an array of strings, collect the last character of each string and combine those characters to make a new string to return. Use the strategy you discovered in Problem 1 along with a for-in loop to write combineLastCharacters. Then try it on the nonsenseArray below.
var nonsenseArray = ["bungalow", "buffalo", "indigo", "although", "Ontario", "albino", "%$&#!"]

func combineLastCharacters(_ arr: [String]) -> String {
    var str = ""
    for word in arr {
        str += String(removeAtIndex(word))
    }
    return str
}

combineLastCharacters(nonsenseArray)
//: __Problem 3__
//:
//: Imagine you are writing an app that keeps track of what you spend during the week. Prices of items purchased are entered into a "price" textfield. The "price" field should only allow numbers, no letters.


//: NSCharacterSet.decimalDigitCharacterSet() is used below to define a set that is only digits. Using that set, write a function that takes in a String and returns true if that string is numeric and false if it contains any characters that are not numbers.

//: __3a.__ Write a signature for a function that takes in a String and returns a Bool
let price = "123a"

func isNumeric(_ str: String) -> Bool {
    if Int(str) != nil {
        return true
    }
    return false
}

isNumeric(price)
//: __3b.__ Write a for-in loop that checks each character of a string to see if it is a member of the "digits" set. Use the .unicodeScalars property to access all the characters in a string. Hint: the method longCharacterIsMember may come in handy.

let digits = CharacterSet.decimalDigits

//: __Problem 4__
//:
//: Write a function that takes in an array of dirtyWord strings, removes all of the four-letter words, and returns a clean array.
let dirtyWordsArray = ["phooey", "darn", "drat", "blurgh", "jupiters", "argh", "fudge"]
func removeDirtyWord(_ arr: [String]) -> [String] {
    var newArr = [String]()
    for i in 0..<arr.count {
        if arr[i].count != 4 {
            newArr.append(arr[i])
        }
    }
    return newArr
}
removeDirtyWord(dirtyWordsArray)

 var movies:Dictionary<String,String> = [ "Boyhood":"Richard Linklater","Inception":"Christopher Nolan", "The Hurt Locker":"Kathryn Bigelow", "Selma":"Ava Du Vernay", "Interstellar":"Christopher Nolan"]
var m1 = MovieArchive()
m1.filterByDirector(movies, "Boyhood")
class MovieArchive {
    func filterByDirector(_ arr: Dictionary<String, String>, _ title: String) -> [String]{
        var newArr = [String]()
        let direName = arr[title]
        for (movie, dire) in arr {
            if dire == direName {
                newArr.append(movie)
            }
        }
        return newArr
    }
}

