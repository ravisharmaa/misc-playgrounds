//import UIKit
var welcome: String

welcome = "Helo"

//print(welcome)

welcome = "bye"

//print("the value of helo is \(welcome)",terminator:"")
//print(" test")


//Integer Conversion

let three: Int = 3
let sth: Float = 0.1234
let result = Float(three) + sth

//Type Alias
typealias AudioSample = UInt16
var max = AudioSample.max

//Tuples
let httpError = (code:404, status:"Not found",active:false)

httpError.status
httpError.active

//Optional and Nils
let number = "hello"
let possible: Int? = Int(number)
//print(possible)--nil

if let newPossible = possible {
    print(newPossible)
} else {
    print("cant unwarp")
}

//Nils

let testNumber = "123"
let testPossible: Int? = Int(testNumber)
//print(testPossible)

//optional binding
if let newNumber = testPossible {
   newNumber
} else {
    print("no values")
}

let decimalNumber: Float = 3.25
let possiblyString: Int? = Int(decimalNumber)

//implict unwrapping

let posstibleString: String? = "optional value"
let forcedString: String = posstibleString!
// the use case is when you implictly know that the optional has a value
// in those you can you can forcfully unwrap the optional


//Basic Operators
let x = "1"
let parsedX: Int? = Int(x)

if parsedX != nil {
    //print("hello")
} else {
   //print("bye")
}

(1, "zebra") > (2, "apple")


var nilCoalceing: String?
nilCoalceing = nil

var nonNil: String? = "hello"

let operation = nonNil ?? nilCoalceing

//String and Characters

var newString = String()

if newString.isEmpty {
   //print("this is empty")
}

//Strings are value types
newString = "test"

var anotherString: String = newString
anotherString

newString = "again tesy"

anotherString

for character in newString {
    character
}

let exclamationMark: Character = "!"
var welcomeStatement: String = "hello world"

welcomeStatement.append(exclamationMark)
welcomeStatement.count

//String Indices
let greeting = "Greetings"

greeting[greeting.startIndex]

greeting[greeting.index(after: greeting.startIndex)]
greeting[greeting.index(before: greeting.endIndex)]

greeting[greeting.index(greeting.startIndex, offsetBy:4)]

//printing characters with indices
for characters in greeting.indices {
    //print("\(greeting[characters])", terminator: " ")
}

//Inserting and Removing characters From a String













