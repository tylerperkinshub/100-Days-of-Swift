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

// Writing functions
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a firectory of images and
MyApp will resize all into thumbnails
"""
    print(message)
}

printHelp()

//Accepting parameters
func square(number: Int){
    print(number * number)
}
square(number: 8)

//Returning Values
func squared(number: Int) -> Int {
    return number * number
}

let squaredResult = squared(number: 8)
print(squaredResult)

// Parameter Labels
func sayHello(to name: String) {
    print("Hello, \(name)")
}

sayHello(to: "Taylor")

// Omitting Paramete labels
func greet(_ person: String) {
    print("Hello, \(person)")
}

greet("Taylor")


// Default pearameters
func greetNewPerson(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Steve")
greetNewPerson("Taylor", nicely: false)

// Variadic function
print("Haters", "gonna", "hate")

func varadicSquared(numbers: Int...){
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

varadicSquared(numbers: 1, 2, 3, 4, 5)

// Throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}



// Throwing functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}
// In the example above print("That password is good!") will never get called because it fails the try

// inout Parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

/// Day 6

// Creating basic closures
let driving = {
    print("I'm driving my car")
}
driving()

// Accepting parameters in a closure
let acceptingDriving = { (place: String) in
    print("I'm going to \(place) in my car")
}

acceptingDriving("London")

// Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("Paris")
print(message)

//Closures as parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I arrived!")
}

travel(action: driving)

// Trailing closure syntax
func travelAsClosure(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I arrived!")
}

travelAsClosure {
    print("I'm driving in my jet.")
}

/// Day 6
// Closures as parameters when they accept parameters
func travelWithClosureAsParameters(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("Berlin")
    print("I arrived")
}

travelWithClosureAsParameters { (place: String) in
    print("I'm going to \(place) in my car")
}

// Closures as parameters with return values
func travelWithParametersWithReturnValue(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("Barcelona")
    print(description)
    print("I've arrived!")
}

travelWithParametersWithReturnValue { (place: String) -> String in
    
    return "I'm going to \(place) in my car"
    
}

// Shorthand parameter names
func travelWithShorthand(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("Liverpool")
    print(description)
    print("I arrived!")
}

travelWithShorthand {
    "I'm going to \($0) in my car"
}

// Closures with multiple parameters
func travelWithMultipleParams (action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived")
}

travelWithMultipleParams {
    "I'm going to \($0) at \($1) miles per hour"
}

// Returning closures
func travelWithReturningFunction() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let travelResult = travelWithReturningFunction()
travelResult("London")

let travelResult2 = travelWithReturningFunction()("London")

// Capturing values
func travelWithCapturingValue() -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)" )
        counter += 1
    }
}

let resultCV = travelWithCapturingValue()
resultCV("Paris")
resultCV("Paris")
resultCV("Paris")

/// Day 8

// Creating your own structs
struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"


// Computed Properties
struct SportWithCompProp {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = SportWithCompProp(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

// Property Observers
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

// Methods
struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
    
}

let london = City(population: 9_000_000)
london.collectTaxes()

// Mutating methods
struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

// Properties and methods of strings
let string = "Do or do not, there is no try."

print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

// Properties and methods of arrays
var toys = ["Woody"]

print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)

/// Day 9 
























































