//: Flipping TwoCoins

//var coin1: Int = 0
//
//var coint2: Int = 0
//
//while true {
//    let result1 = Int(Int.random(in: 1...10) % 2 )
//    let result2 = Int(Int.random(in: 1...10) % 2 )
//
//    if (result1 == 1 && result2 == 1 ) {
//        print("Heads")
//        break
//    }
//
//}


//var number = 0
//
//while true {
//    number += 2
//    print(number)
//
//    if (number == 500) {
//        break
//    }
//}

func loveIt(subject: String) {
    print("I love \(subject)")
}

func areaOfRectangle(length: Int, width: Int) {
    print(length * width)
}

func sumOrDifference(a: Int, b: Int, sum: Bool) -> Int {
    if sum {
        return a + b
    }
    
    return a - b
}

// A simple struct
struct Author {
    
    let name: String
    let book: String
    let published_at: String
    
}

// Struct on structs

struct City {
    var name: String
    var population: String
    var muncipality: Municipality
}

struct Municipality {
    var longtitute: Double
    var latitude: Double
}



var bagmati = Municipality(longtitute: 2.34, latitude: 34.43)

var city = City(name: "Kathmandu", population: "1223232", muncipality: bagmati)

city.muncipality.latitude = 2.23

city.muncipality.latitude


// Function within structs

struct Bio {
    var initialName: String
    var lastName: String
    
    func prepareFullName() -> String {
        return initialName + lastName
    }
}

// Changing the property within the structs using computed types and mutators

struct Info {
    
    var distance: Int
    
    var distanceByBus: Double {
        return Double(distance) / 10
    }
    
    mutating func increaseDistance(by: Int) {
        distance += by
    }
}

var info = Info(distance: 100)

info.distance

info.distanceByBus

info.increaseDistance(by: 100)

info.distance

info.distanceByBus


struct Product {
    var name: String
    var price: Double
    
    var priceInDollars: String {
        return "$\(price)"
    }
    
    mutating func discount() {
        price -= price * 0.1
    }
    
}

var product = Product(name: "laptop", price: 13)

product.discount()

product.price


enum Seasons: String {
    case fall = "Fall"
    case summer = "Summer"
    case rainy = "Rainy"
    case spring = "Spring"
}


enum Fingers: Int {
    case index = 1
    case middle = 2
    case long = 3
    case pinky = 4
}

// Optionals

var y: Int

var x: Int

var str1 = "Hello"

var str2 = "123"

// Null coalsecing operator

y = Int(str2) ?? 0

x = Int(str1) ?? 0

var a: String
var b: Float

var tt = 123

var ll = "23"

a = String(tt)

b = Float(ll) ?? 12.22


// Relating to nil

var zee: Int?
var string: String

var random = Int.random(in: 1...10)

if random == 1 {
    string = "123"
} else {
    string = "ABC"
}

zee = Int(string)

if let intVal = zee {
    print(intVal)
} else {
    //print("Cannot unwrap")
}


// More unwrapping

enum Genre: String {
    case country, blues, pop
}

struct Artist {
    let name: String
    
    var primaryGenre: Genre?
}

struct Song {
    var title: String?
    var artist: Artist?
}

var jonny = Artist(name: "Sabin", primaryGenre: nil)


var song = Song(title: "Guras Ko fed muni", artist: jonny)

if let _ = song.artist?.primaryGenre {
    // do sth with the unwrapped optional
} else {
   // print("No genre available")
}

// Optional Chaining


struct Tail {
    var length: String
    
    init(length: Int) {
        self.length = "\(length)"
    }
}


struct Animal {
    
    var name: String
    
    var species: String = "manche"
    
    var tail: Tail?
    
    init(name: String, species: String, tailLength: Int?) {
        self.name = name
        self.species = species
        
        if let tailLength = tailLength {
            self.tail = Tail(length: tailLength)
        } else {
            self.tail = nil
        }
    }
}

//let animal = Animal(name: "Hatti", species: "jamin ma basne", tailLength: 10)

let animal = Animal(name: "Hatti", species: "jamin ma basne", tailLength: nil)

if let tailLength = animal.tail?.length {
    print(tailLength)
} else {
    //print("\(animal.name) has no tail")
}

func determineTail(anmial: Animal) -> String {
    
    guard let length = animal.tail?.length else {
        return "Hatti has no tail"
    }
    
    return length
}

determineTail(anmial: animal)

// Exercise

enum ArtistGenre: String {
    case pop = "Pop"
    case blues = "Blues"
    case rock = "Rock"
}

struct Performer {
    let name: String
    let artistGenre: ArtistGenre?
}

struct Creation {
    let title: String
    let released: Int
    var performer: Performer?
}


let performer = Performer(name: "Hariharan", artistGenre: nil)

let creation = Creation(title: "Hazir", released: 2009, performer: nil)


func getPerformerGenre(creation: Creation) -> String {
    
    //Mark: If let
    
    /*
    if let result = creation.performer?.artistGenre {
        return result.rawValue
    } else {
        return "Wow you gave me nil bro"
    }
    */
    
    // Guard Let
    
    /*
    
    guard let result = creation.performer?.artistGenre  else {
        return "Wow you gave me nil bro"
    }
    
    return result.rawValue
    */
    
    
    // nil coalsecing
    
    return creation.performer?.artistGenre?.rawValue ?? "Wow nil here"
}

getPerformerGenre(creation: creation)

// Strings

let myString = String()

// Arrays

let anArray = ["sabin", "babain","ramu"]

// Classes

class Movie {
    
    var title: String
    var director: String
    var releaseYear: Int
    
    init(title: String, director: String, releaseYear: Int) {
        self.title = title
        self.director = director
        self.releaseYear = releaseYear
    }
    
    func setTitle(title: String) -> Movie {
        self.title = title
        
        return self
    }
    
    func getTitle() -> String {
        return self.title
    }
    
    
}


let movie = Movie(title: "deuta", director: "tulis", releaseYear: 2004)

print(movie.setTitle(title: "hero").getTitle())

func add(a: Int, b: Int) -> Int {
    return a + b
}

var math: (Int, Int) -> Int = add

print(math(2,3))



































