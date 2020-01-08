//var population: Int = 5422
//var message: String?
//var hasPostOffice: Bool = true

/*
if population < 1000 {
    message = "\(population) is a small town"
} else {
    message = "\(population) is big"
}
 */
/*
message = population < 1000 ? "\(population) is small":"\(population) is big"

print(message!)

if !hasPostOffice {
    print("Where do we buy stamps?")
}
 */
/*
print("the max int is \(Int.max)")

print("the min int is \(Int.min)")
*/

//Overflow operator
/*
let y: Int8 = 120
let x = y &+ 10
*/
/*
let a: Int16 = 200
let b: Int8 = 50
let c = a + Int16(b)
*/
/*
let d1 = 1.1
let d2: Double = 1.1

if d1 == d2 {
    print("both are equal")
}

print(d1 + 0.1)

if d1 + 0.1 == 1.2 {
    print("both are not equal")
}
 */
/*
var statusCode: Int = 412
var errorString: String?

switch statusCode {
case 404:
    errorString = "Forbidden"
case 401:
    errorString = "Unauthorized"
default:
    errorString = "Must be an error code"
}

print(errorString!)
*/
/*
var statusCode: Int = 406
var mustBeErrorString: String = "I have a request"

switch statusCode {
case 400...404:
    mustBeErrorString = "there was error with request"
    fallthrough
default:
    mustBeErrorString += ", Please review the request"
}
*/

/*
var statusCode: Int = 406
var mustBeErrorString: String? = "I have a request"

switch statusCode {
case 400...404:
    mustBeErrorString = "there was error with request"

case let unknownCode:
    mustBeErrorString = "\(unknownCode) is not a code, Please review the request"
}

print(mustBeErrorString!)
*/
/*
var statusCode: Int = 407
var errorString: String = "this is error"

switch statusCode {
case 399...405:
    errorString += "failure"
case let unknownCode where (unknownCode <= 300):
    errorString += "unknown code"
default:
    errorString += " default ma chha"
}

let error = (code: statusCode, data: errorString)
error.data
 */

//Pattern Matcihing Tuples
/*
let firstErrorCode: Int = 404
let secondErrorCode: Int = 200

let errorCodes = (firstErrorCode, secondErrorCode)


switch errorCodes {
case (404, 404):
    print("no items")
case (404, _):
    print("first item not found")
case(_, 404):
    print("second item unfound")
default:
    print("all items found")
}
*/
/*
let age: Int = 25

switch age {
case 18...25:
    print("hello world")
default:
    break
}

//Instead of above switch we can use this

if case 18...25 = age, age >= 21 {
    print("cool switch")
}
*/

/*
let point = (x: 1, y:4)
switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")

case let q2 where (point.x < 0) && (point.y > 0):
    print("\(q2) is in quad 2")

case let q3 where (point.x < 0) && (point.y < 0):
    print("\(q3) is in quad 3")

case let q4 where (point.x > 0) && (point.y < 0):
    print("\(q4) is in quad 4")

case(_, 0):
    print("\(point) is on x axis")

case(0, _):
    print("\(point) is on y axis")

default:
    print("case not covered")
}
 */


//For loops

/*
var test: Int = 1

for _ in 1...5 {
    print(test)
    test += 1
}
 */
/*
for i in 1...100 where i % 3 == 2 {
    print(i)
}
 */

/*
var shields = 5
var blastersOverheating = false

var blasterFireCount = 0
var spaceDemonsDestroyed = 0

while shields > 0 {
    
    if spaceDemonsDestroyed == 5 {
        print("End Game")
        break
    }
    
    if blastersOverheating {
        print("over heated")
        print("please fire")
        blastersOverheating = false
        blasterFireCount = 0
        continue
    }
    
    if blasterFireCount > 0 {
        print("Fire \(blasterFireCount)")
        blastersOverheating = true
        continue
    }
    
    print("fire!")
    blasterFireCount += 1
    spaceDemonsDestroyed += 1
    
    
}
*/
/*
for i in 1...10 {
    
    if i % 3 == 0 {
        print("FIZZ")
        continue
    }
    
    if (i % 5 == 0) {
        print("BUZZ")
        continue
    }
    
    if (i % 3 == 0 && i % 5 == 0) {
        print("FIZZ BUZZ")
        continue
    } else {
        print(i)
    }
    
    
}
 */
/*
for i in 1...10 {
    let result = (i % 3 , i % 5 )
    
    switch result {
    case (0, _):
        print("Fizz")
    case (_, 0):
        print("Buzz")
    case (0,0):
        print("Fizz Buzz")
    default:
        print(i)
    }
}

let unicodeString = "\u{1F60E}"
 */

//Strings
/*
let greet = "Something"
greet[greet.startIndex]
greet[greet.index(before:greet.endIndex)]
*/

/*
var errorCodeString: String?

errorCodeString = "404"

var errorDescription: String?

if let theError = errorCodeString,
    let errorCode = Int(theError),
    errorCode == 404 {
    errorDescription = "\(errorCode + 200) : not found"
}

var upCaseDescription = errorDescription?.uppercased()
*/

//Collections
// 1. Array
/*
var bucketList  = ["climb everest"]
bucketList.append("fly to america")
bucketList.append("date a celeb")
bucketList.append("buy a ferrari")

bucketList.count
bucketList[0...2]
*/

// 2. Dictionaries
/*
var movieRatings = ["Donnie Darko":4, "Chungking":5, "Dark City": 3]

let oldRating: Int? = movieRatings.updateValue(6, forKey: "Donnie Darko")

if let lastRating = oldRating,
    let currentRating = movieRatings["Donnie Darko"] {
    print("Old rating:\(lastRating), current rating \(currentRating)")
}

movieRatings["Inception"] = 10
movieRatings["Inception"] = nil

for movie in movieRatings.keys {
   print(movie)
}


let watchedMovies = Array(movieRatings.keys)
watchedMovies
*/
// Escaped Sets

// Functions
/*
func printGreeting ()-> Void {
    print("Hello World")
}

printGreeting()

func printGreetingWithName(name :String)->Void {
    print("helo \(name)")
}

printGreetingWithName(name: "Ravi")


//using external parameter

func usingExternalParameter(to name: String)->Void {
    print("Hello \(name)")
}

usingExternalParameter(to: "Ravi")
*/

//Varaiadic Functions

/*
func printGreetings(to names: String...)->Void {
    for name in names {
        print("Hello \(name)")
    }
}

printGreetings(to: "Ravi","Shyam","Hari")
 */

// In out params
/*
var error = "The request failed"

func appendErrorCode(_ code: Int, toErrorString errorString: inout String)->String {
    errorString += " \(code) is a bad request"
    return errorString
}

print(appendErrorCode(400, toErrorString: &error))

print(error)
 */

//Nested Functions
/*
func areaOfTrainagleWithBase(_ base:Double, height: Double) -> Double {
    
    let numerator = base * height
    
    func divide() -> Double {
        
        return numerator/2
    }
    
    return divide()
}

areaOfTrainagleWithBase(3.0, height: 2.0)
*/

//OPtional return types
/*
func getMiddleName(fromFullName name: (String, String?, String)) -> String? {
    return name.1
}

let middleName = getMiddleName(fromFullName: ("Ravi","Sharma", "Bastola"))

if let theName = middleName {
    print(theName)
}
 */
//Exiting early fom a function

/*

func greetByMiddlename(fromFullName name:(first: String, middle: String?)) {
    
    guard let middleName = name.middle else {
        print("Hey there")
        return
    }
    print("hey", middleName)
}

greetByMiddlename(fromFullName: ("Ravi",nil))

greetByMiddlename(fromFullName: ("Ravi", "Sharma"))
*/

// Function Types
/*

func sortedEvenOddNumbers (_ numbers: [Int]) -> (evens:[Int], odd: [Int]) {
    var evens = [Int]()
    var odds  = [Int]()
    
    for number in numbers {
        if number % 2 != 0 {
            odds.append(number)
            continue
        }
        evens.append(number)
    }
    
    return (evens, odds)
}

//print(sortedEvenOddNumbers([10,2,3,4,5,3,1,23,34,32,12]))

// Setting function to a variable
let evenOddFunction: ([Int]) -> (evens: [Int], odds: [Int]) = sortedEvenOddNumbers

print(evenOddFunction([1,2,3,4,5,6,7,8,9]))
*/
// Explicitly  not defining void which maps to a void
/*
func printGreeting() -> () {
    print("hello world")
}

printGreeting()
*/

//Closures
/*
let volunteer = [1,3,49,2,213,231]

let sortedOnes = volunteer.sorted { (i, j) -> Bool in
    return i < j
}
print(sortedOnes)

print(volunteer.sorted(by: {$0 < $1}))
*/

//Functions as Return Types
/*
func makeTownGrnd()-> (Int, Int)-> Int {
    func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int)-> Int {
            return lights + existingLights
    }
    
    return buildRoads
}

var stopLights = 4
let townPlanLights = makeTownGrnd()
stopLights = townPlanLights(4, stopLights)
*/

//function as arguments

/*
func makeTownGrand ( withBudget budget:Int,
                     condition: (Int) -> Bool)
    ->((Int, Int) -> Int)? {
        if condition(budget) {
            func buildRoads( byAddingLights lights: Int,
                             toExistingLights exLights: Int)-> Int {
                return lights + exLights
            }
            return buildRoads
        }
        return nil
}

func evaluate(budget: Int)->Bool {
    return budget > 10_000
}

var stoplights = 4

if let townPlan = makeTownGrand(withBudget: 1_000, condition: evaluate) {
    stoplights = townPlan(4, stoplights)
}

//Testing function as args

func getfullName(firstName: String, lastName: (String)->String?) -> String {
    return "\(firstName) + \(lastName)"
}

func getlastName(lastname: String)->String {
    return lastname
}

var fullName = getfullName(firstName: "Ravi", lastName: getlastName)
 */

//Enumerations





