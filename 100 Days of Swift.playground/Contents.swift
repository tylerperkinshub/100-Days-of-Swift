import UIKit
import Foundation


/// Day 1

//Strings
var str = "Hello, playground"
// Chaning value of declared string
str = "Goobye"

// Ints & Int with _ to format for easy reading
var age = 38
var population = 8_000_000


//String over multiple line declaration
var stringOverMultipleLines = """
This goes
over multiple
lines
"""
//To make multiple lines appear on the same
var stringOverMultipleLines1 = """
This goes \
over multiple \
lines
"""

// Double
var pi = 3.141

// Bool
var awesome = true

// String interpolation
var score = 85
var stringInterpolation = "Your score was \(score)"

var results = "The test resulter are here: \(score)"

// Constants
let taylor = "swift"

// Type Annotations
let album: String = "Reputaion"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true


/// Day 2 

// Arrays
let john    = "John Lennon"
let paul    = "Paul McCartney"
let george  = "George Harrison"
let ringo   = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[1]

// Sets
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "green", "red"])

// Tuples
var name = (first: "Taylor", last: "Swift")
name.0
name.first

// Arrays vs Sets vs Tuples

// Tuples: fixed collection that doesn't need to grow or contract.
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashivlle")
// Sets: No particular order is needed and no dupes are needed
let set = Set(["aardvark", "astronaut", "azalea"])
// Array: Most common. If order matters and you want dupes.
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]

// Dictionary Defualt Values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Tyler", default: "Uknown"]

// Creating Empty Collections
var teams = [String: String]()
teams["Paul"] = "Red"

var newResults = [Int]()
var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var differentResults = Array<Int>()

// Enums
let res = "failue"
let res2 = "failed"
let res3 = "fail"

enum Result {
    case success
    case failue
}

let res4 = Result.failue

// Enum asscoiated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topics: String)
    case singing(volume: Int)

}

let talking = Activity.talking(topics: "Football")

// Enum raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

/// Day 3






























