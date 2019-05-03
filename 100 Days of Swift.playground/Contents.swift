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

// Arithmetic operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

// Operator Overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let bealtes = firstHalf + secondHalf

// Compund Assignment operators
var score95 = 95
score95 -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "plains"

// Comparison Operators
let firstScoreCO = 6
let secondScoreCO = 4

firstScoreCO == secondScoreCO
firstScoreCO != secondScoreCO

firstScoreCO < secondScoreCO
firstScoreCO >= secondScoreCO

"Taylor" <= "Swift"

// Condition
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces! Lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// Combining Conditions
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("One of the is over 18")
}

// Ternary Operator
let tOFirstCard = 11
let tOSecondCard = 10
print(tOFirstCard == tOSecondCard ? "Cards are the same" : "Cards are different")

    //Ternary is essentially this
if tOFirstCard == tOSecondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}

// Switch statements
let weather = "Sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    // if you want to add on top of case use
    // fallthrough
default:
    print("Enjoy your day")
}

// Range Operators
let rOScore = 85

switch rOScore {
case 0..<50:
    print("You failed badly")
case 50..<85:
    print("You did Ok.")
default:
    print("You did great!")
}


/// Day 4

// For Loops
let fLNumbers = 1...10
for number in fLNumbers {
    print("Number is \(number)")
}

let fLAlbums = ["Red", "1989", "Reputation"]
for album in fLAlbums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

// While Loops
var wLNumber = 1
while wLNumber <= 20 {
    print(wLNumber)
    wLNumber += 1
}
print("Ready or not, here I come!")

// Repeat Loop
var rLNumber = 1
repeat {
    print(rLNumber)
    rLNumber += 1
} while rLNumber <= 20

print("Ready or not, here I come!")

while false {
    print("This is false")
}

// Exiting Loop
var eLCountDown = 10
while eLCountDown >= 0 {
    print(eLCountDown)
    if eLCountDown == 4 {
        print("I'm bored. Lets go now!")
        break
    }
    eLCountDown -= 1
}

print("Blast off!")

// Nested Loops/ Exiting multiple loops
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// Skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}



// Infinite Loop
var counter = 0

while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}

/// Day 5



































































