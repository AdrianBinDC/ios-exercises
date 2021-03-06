import UIKit

/*

Strings

*/

// DONE
func favoriteCheeseStringWithCheese(cheese: String) -> String {
    return cheese + " cheese"
}
// DONE
let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."
println("My favorite cheese is " + fullSentence)

/*

Arrays & Dictionaries

*/

// DONE
let numberArray = [1, 2, 3, 4]
// Add 5 to this array

// make a copy of the number array that is a variable (mutable) insead of static (immutable)
var numberArrayCopy = numberArray
numberArrayCopy.append(5)

// DONE
let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
var numberDictionaryCopy = numberDictionary
numberDictionaryCopy[5] = "five"

// This displays the dictionary, but it's not sorted. I believe it's arbitrary, but the key/value pair is in there.
numberDictionaryCopy

/*

Loops

*/

// DONE
// Use a closed range loop to print 1 - 10, inclusively
for i in 1...10 {
    if i == 1 {
        println("This is the closed console output")
    }
    println(i)
}

// DONE
// Use a half-closed range loop to print 1 - 10, inclusively
for i in 1..<11 {
    if i == 1 {
        println("This is the half-closed console output")
    }
    println(i)
}

// TODO - need to finish this function
let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    
    // create an array of Strings to dump in favorite drink strings
    var favoriteDrinkArray = [String]()
    
    for character in characters {
        /* this is cautious code which prevents a crash from occurring if the 
        "favorite drink" key does not contain a value*/
        if let drink = character["favorite drink"] {
            favoriteDrinkArray.append(drink)
        }
    }
    
    return favoriteDrinkArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]
// TODO finish this up
func outputsStringsSeparatedByASemicolon(NSArray) -> NSString {
    var count = 1
    var finalString: NSString = ""
    for string in strings {
        if count < strings.count {
            finalString = "\(finalString)\(string);"
            count++
        } else {
            finalString = "\(finalString)\(string)"
        }
    }
    return finalString
}

println(outputsStringsSeparatedByASemicolon(strings))

// WORK HERE - make your function and pass `strings` in

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// DONE
// Use a closure to sort this array alphabetically
var sortedCerealArray = sorted(cerealArray, <)
println(sortedCerealArray)
