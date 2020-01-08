/* Enumerations */
/*
enum TextAlignmet: Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

var alignment = TextAlignmet.justify

switch alignment {
case .left:
    print("left")
case .right:
    print("right")
case .justify:
    print("center")
case .center:
    print("center1")
}
print(TextAlignmet.justify.rawValue)

let myRawValue = 20

if let myvalue = TextAlignmet(rawValue: myRawValue) {
    print(myvalue)
} else {
    print("error")
}

enum ProgrammingLanguage: String {
    case swift
    case c = "c"
    case java = "java"
    
}

let myfavlang = ProgrammingLanguage.swift
print(myfavlang.rawValue)
*/
/*
enum LightBulb {
    case on
    case off
    
    func temparature (ambient: Double) ->Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }
    
    mutating func toggle () {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
    
}

var bulb = LightBulb.on
var ambient = 40.0
bulb.temparature(ambient: ambient)

bulb.toggle()

var bulbTemp = bulb.temparature(ambient: ambient)
*/

/*
func greeting(_ greeting: String) ->(String)-> String {
    return {
        (name: String)-> String in
            return "\(greeting) \(name)"
    }
}

let freindlyGreeting = greeting("hello")
let mattGreeting = freindlyGreeting("matt")
print(mattGreeting)
*/
struct Person {
    var firstName = "ravi"
    var lastName = "sharma"
    
    mutating func changeTo(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
}

var p = Person()
p.changeTo(firstName: "her", lastName: "ht")

p.firstName
