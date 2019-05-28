import Foundation
import UIKit

/// Day 13
// Lets and Constants
var name = "Tim McGraw"
name = "Romeo"

// Data types
var name2: String = ""
name2 = "Tim McGraw"

var age: Int = 0
age = 25

var latitude: Double = 0.0
latitude = 36.166667

var longitude: Float = 0.0
longitude = -123486.783333

var stayOutTooLate: Bool = false
stayOutTooLate = true

var nothingInBrain: Bool = false
nothingInBrain = true

var missABreat = false

// Type Inference
let age2 = 25
let longitude2 = -87.233333
let stayOutTooLate2 = true

// Operators
var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

var a1 = 1.1
var b1 = 2.2
var c1 = a1 + b1

var name3 = "Time McGraw"
var name4 = "Romeo"
var both = name3 + " and " + name4


// Comparative Operators
c1 > 3
c1 >= 3
c1 > 4
c1 < 4

var name5 = "Tim McGraw"
name5 == "Tim McGraw"
name5 != "TIM McGraw"

var stayOutTooLate3 = true
stayOutTooLate3
!stayOutTooLate3

// String Interpolation
"Your name is \(name5)"

"Your name is \(name5), your age is \(age), and your latitude is \(latitude)"

"If you double your age it will be \(age * 2)"

// Arrays
var evenNumbers = [2, 4, 6, 8]
var songs = ["Shake it off", "You belong with me", "Back to December"]


songs[0]
songs[1]
songs[2]

type(of: songs)

// Dictionary
var person = [
    "first": "Taylor",
    "middle": "Alison",
    "last": "Swift",
    "month": "December",
    "website": "taylorswift.com"
]

person["middle"]
person["month"]

// Conditional Statement
var action = ""
var person2 = "hater"

if person2 == "hater" {
    action = "hate"
} else if person2 == "player" {
    action = "play"
} else {
    action = "cruise"
}

// Loops

for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

var str = "Fakers gonna"

for _ in 1...5 {
    str += " fake"
}

print(str)

for song in songs {
    print("My favorite song is \(song)")
}

var people1 = ["players", "haters", "heart-breakers", "fakers"]
var actions1 = ["play", "hate", "break", "fake"]

for i in 0...3 {
    print("\(people1[i]) gonna \(actions1[i])")
}

for i in 0..<people1.count {
    var str = "\(people1[i]) gonna"
    
    for _ in 1...5 {
        str += " \(actions1[i])"
    }
    print(str)
}

var counter = 0

while true {
    print("Counter is now \(counter)")
    
    counter += 1
    
    if counter == 556 {
        break
    }
}

for song in songs {
    if song == "You belong with me" {
        continue
    }
    
    print("My favorite song is \(song)")
}

// Switch Case
let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")
case 1:
    print("You just released iTunes Live from SoHo")
case 2:
    print("You just released Speak Now World Tour")
default:
    print("Have you done something new?")
}

/// Day 14
// Functions
func favoriteAlbum(name: String) {
    print("My favorite is \(name)")
}

favoriteAlbum(name: "Fearless")

func printAlbumRelsease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}

printAlbumRelsease(name: "Fearless", year: 2008)

func countLettersInString(in str: String) {
    print("The string \(str) has \(str.count) letters")
}

countLettersInString(in: "Hello")

func albumIsTaylors(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    return false
}

if albumIsTaylors(name: "Taylor Swift") {
    print("That's one of hers!")
} else {
    print("Who made that?")
}

// Optionals
func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

var status = getHaterStatus(weather: "sunny")

func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }
    
    return nil
}

var year = yearAlbumReleased(name: "Red")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(year!)")
}


// Optional Chaining
func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

let album = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album)")

// Enums
enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: WeatherType.wind(speed: 5))

// Structs
struct Person {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(taylorCopy)

// Classes
class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("La la la la")
    }
}

class CountrySinger: Singer {
    override func sing() {
        print("Trucks, guitars, and liquor")
    }
}

var taylor1 = CountrySinger(name: "Taylor", age: 25)
taylor1.sing()

class HeavyMetalSinger: Singer {
    var noiseLevel: Int
    
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}

/// Day 15

// Properties

struct Person1 {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor2 = Person1(clothes: "T-shirts")
taylor2.clothes = "short skirts"

struct Person3 {
    var age: Int
    
    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person3(age: 25)
print(fan.ageInDogYears)

//Static Properties and Methods
struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"
    
    var name: String
    var age: Int
}

let fan1 = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)

// Acess Control

/*
 Public: this means everyone can read and write the property.
 
 Internal: this means only your Swift code can read and write the property. If you ship your code as a framework for others to use, they won’t be able to read the property.
 
 File Private: this means that only Swift code in the same file as the type can read and write the property.
 
 Private: this is the most restrictive option, and means the property is available only inside methods that belong to the type, or its extensions.
 
*/

// Polymorphism and typecasting
class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
    
    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}

    // Nil coalescing
for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum]() {
    print(album.location)
}

// Closures
let vw = UIView()

UIView.animate(withDuration: 0.5) {
    vw.alpha = 0
}

// Protocols
protocol Employee {
    var name: String { get set }
    var jobTitle: String { get set }
    func doWork()
}

struct Executive: Employee {
    var name = "Steve Jobs"
    var jobTitle = "CEO"
    
    func doWork() {
        print("I'm strategizing!")
    }
}

struct Manager: Employee {
    var name = "Maurice Moss"
    var jobTitle = "Head of IT"
    
    func doWork() {
        print("I'm turning it off and on again.")
    }
}

let staff: [Employee] = [Executive(), Manager()]

for person in staff {
    person.doWork()
}

// Extensions










