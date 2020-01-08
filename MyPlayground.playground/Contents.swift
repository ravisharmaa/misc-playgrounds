//: Playground - noun: a place where people can play

import UIKit

//var apples :Int = 9
//var oranges :String = "Nine"
//let appleSummary :String = "I have \(apples) apples."
//let fruitSummary :String = "I have \(oranges) fruits."
//var string1 :String = "Hello"

//for letters in string1.characters{
//    print(letters)
//}

//print("uppercased:" + oranges.lowercased())
//
//var testString :String = "one,to,three,four"
//testString.replacingOccurrences(of: "to", with: "two")

//var test : String?
//print(test)

//let order = "cat" < "dog"

//var workHours = 45
//var price = 0
//if(workHours > 40){
//    let extraWork = workHours - 40
//    price += extraWork * 50
//    workHours -= extraWork
//}
//    price += workHours * 25
//    print(price)

//let myAge = 26
//if(myAge > 13 && myAge < 19){
//    print("Teenager")
//}else{
//    print("Old guy")
//}
//let answer = (1 < 2) ? "Not good" : "Good"
//var counter = 1
//while counter <= 10 {
//    var x = counter
//
//    counter = counter + 1
//}
//var counter = 0
//var roll = 0
//repeat{
//    roll = Int(arc4random_uniform(6))
//    counter += 1
//}while roll == 0

//let firstName: String = "Matt"
//if(firstName == "Matt"){
//    let lastName = "Galloway"
//} else if (firstName == "Ray"){
//    let lastName = "Wenderlich"
//}
// let fullName = firstName + " " + lastName

//let closedRange = 0...5
//print(closedRange)
//
//let halfOpenRange = 0..<5

//let count = 10
//var sum = 0

//for i in 1..<count {
//    sum += i
//}
//var sum = 0
//for row in 0..<8{
//    if(row % 2 == 0){
//        continue
//    }
//    for column in 0..<8{
//        sum += row*column
//        print(sum)
//    }
//}

//var range = 1...10
//for i in range {
//    print(i*i)
//}
//var number = 10
//switch number {
//case 10:
//    print("this is 10")
//default:
//    break
//}

//let animal = "dog"
//switch animal.lowercased() {
//case "rat","fog":
//    print(animal)
//default:
//    break
//}

//let coordinates = (x:3,y:2,z:5)
//switch coordinates {
//case (0,0,0):
//    print("origin")
//case (let x,0,0):
//    print("on the x-axis where  x= \(x)")
//case (0,let y,0):
//    print("on the x-axis where  y= \(y)")
//case (0,0,let z):
//    print("on the x-axis where  z= \(z)")
//case let (x,y,z):
//    print("No where")
//}

//func myNameData(_ firstName: String, _ lastName: String){
//    print(firstName + lastName)
//}
//myNameData("ravi","sharma")

//func multiply(_ number: Int, by multiplier: Int = 1 ) -> Int {
//    return number * multiplier
//}
//let reult = multiply(14)
//print(reult)

//func multiplyAndDivide(_ number: Int, by factor:Int)->(product: Int, quotient: Int, answer: String){
//    return (number * factor, number/factor,"Solved")
//}
//let result = multiplyAndDivide(2, by: 4)
//print(result.answer)

//func incremenetAndPrint(_ value: Int)-> Int {
//    return value+1
//}
//incremenetAndPrint(1)
//func getValue()->Int {
//    return 24
//}
//
//func getValue()-> String {
//    return "Hello"
//}

//let result: Int = getValue()
//let result: String = getValue()

//func getFullName(_ firstName: String, with lastName: String)-> (count: Int, fullName: String){
//    var name = firstName + " " + lastName
//    return (name.characters.count, name)
//}
//let fullName = getFullName("Ravi", with: "Sharma")
//fullName.count
//fullName.fullName

//func add (_ a: Int, _ b: Int)->Int {
//    return a+b
//}
//func substract (_ a: Int, _ b: Int)->Int {
//    return a-b
//}
//var testAdd = add
//var testSub = substract
//
//func printResult(_ function: (Int, Int)->Int, _ a: Int, _ b: Int)->Int{
//    let result = function(a , b)
//    return result
//}
//var result = printResult(testAdd,4,3)

//func getFullName(_ firstName: String , _ lName: String)->String{
//    return firstName + " " + lName
//}
//
//let getName = getFullName
//
//func fullNamefunction(_ getFullName:(String, String)->String,
//                      _ fname: String, with lname: String)->String{
//    return (getName(fname, lname))
//}
//
//let result = fullNamefunction(getName, "Ravi", with: "Sharma")
//Sride Function
//for index in stride(from: 10, through: 22, by: 1){
//    print(index)
//}

//func isNumberDivisible(_ number: Int, by divisor: Int)->Bool{
//    return number % divisor == 0
//}
//
//func isPrime(_ number: Int )->Bool{
//    var result: Bool = true
//    if( number <= 0 ){
//        return false
//    }
//    for i in 2...number{
//     result = isNumberDivisible(number, by: i)
//    }
//    return result
//
//}
//isPrime(-9)


//var result: Int! = 30
//print(result + 1)

//var authorName: String?
//if let name = authorName{
//        print("name is \(name)")
//}else {
//    print("name is not name")
//}

//var myFavSong: String? = "hello"
//if let song = myFavSong {
//    print("song is \(song)")
//}else {
//    print("song is not song")
//}
//func calculateNumberOfSides(shape:String)->Int?{
//    switch shape {
//        case "Triangle":
//        return 3
//    case "Rectange":
//        return 4
//    default:
//        return nil
//    }
//}
//
//func printSides(shape: String) {
//    guard let sides = calculateNumberOfSides(shape: shape) else {
//        print("this has no \(shape)")
//        return
//    }
//    
//    print("this \(shape) has many \(sides)")
//    
//}
//printSides(shape: "Circle")
//var players: [String] = []
//players = ["Alice","Bob","Cindy","Dan"]
////print(players.isEmpty)
//var currentPlayer = players.last
//print(currentPlayer)

//check if an element exists in an array

//var playerArray = ["Ravi","Shyam","Agasti","Kuresh"]
//func isEliminated(player: String)->Bool{
//    return !playerArray.contains(player)
//}
//
//print(isEliminated(player: "Ravi"))

//playerArray.append("hari")

//var scores = [1,2,23,45]
//var players = ["Ravi","Hari","Raju","Gopal"]
//for player in 0..<scores.count{
//    print("the player \(players[player]) has  \(scores[player]) scores")
//}

//var myArrayInt: [Int] = [2,3,4,5,6,7,8,9,1,3,4,6]
//func removingOnce(_ item: Int, from array: [Int])->[Int]{
//    if(array.contains(item)){
//
//    }
//}

//var namesAndScores = ["anna": 2, "ravi": 3, "jage":4]
//print(Array(namesAndScores.values))

//var bobData = ["name": "bob", "profession": "player", "country": "Usa"]
//func showCityName(){
//    print(bobData["country"])
//}
//showCityName()



//making changes on Array
//var myArray = [1,2,3,4,5,6]
//myArray[1...2] = [12,13]
//myArray

// sorting an array
//var arrayOne = [1,3,5,7,6,4,2,9,8]
//var test = arrayOne.sorted(){$0 > $1}
//print(test)

//filtering an array

//var arrayOne = [1,3,5,7,6,4,2,9,8]
//var filtered = arrayOne.filter(){$0 % 2 == 0 }.sorted(){$0 < $1}
//print(filtered)
//class MyClass {
//    let c = 5
//    var v = ""
//}
//
//struct MyStruct {
//    let c = 5
//    var v = ""
//
//    func test()->String{
//        return "Hello"
//    }
//}
//
//var stData = MyStruct()

//class Plant {
//    var height = 0.0
//    var age = 0
//
//    func growHeight(inches: Double) {
//        height += inches
//    }
//
//    func getDetails()->String {
//        return "Height: \(height) age: \(age)"
//    }
//}
//
//class Tree: Plant {
//    var limbs = 0
//
//    func growLimbs() {
//        limbs += 1
//    }
//
//    func fallLimbs() {
//        self.limbs -= 1
//    }
//
//    override func getDetails() -> String {
//        let details = super.getDetails()
//        return "\(details) limbs: \(limbs)"
//    }
//}
//
//
//class OakTree: Tree {
//    var leaves = 0
//
//}
//
//class PineTree: Tree {
//    var needles = 0
//}
//
////var plant = Plant()
////plant.getDetails()
////
////var tree = Tree()
////tree.getDetails()
//
//
//
//
//
//var tree = Tree();
//tree.age = 5
//tree.height = 4
//tree.growLimbs()
//tree.growLimbs()
//print(tree.getDetails())

/*var image = [
    [1,2,4],
    [3,2,6],
    [2,3,8]
]



func increaseLowerValues(imageArray image: inout[[Int]])->[[Int]]{
    for row in 0..<image.count{
        for col in 0..<image[row].count{
            if(image[row][col] < 5) {
                image[row][col] = 5
            }
        }
        
    }
    return image
}

increaseLowerValues(imageArray: &image)
*/
/*
struct Person {
    var fName: String
    var lName: String
    var profession: String
    var changeProf :String {
        get {
            return profession + "Singer"
        }
        set(newProfession) {
            profession =  newProfession + profession
        }
    }
}

var person = Person(fName:"Ravi", lName:"Bastola",profession:"developer")
person.profession
person.changeProf

person.changeProf = "Teacher"

person.profession
*/


//
//struct Salary {
//    var salary: Double
//    var salrayIncrease: Double
//    var bonus: Double
//    var salaryAfterBonus: Double {
//        get {
//            return bonus + salrayIncrease
//        }
//        set(newSalary){
//            salary = newSalary + salary
//        }
//    }
//}
//
//var salary = Salary(salary: 1000, salrayIncrease: 200, bonus: 50)
//salary.salary
//salary.salrayIncrease
//salary.bonus
//
//salary.salaryAfterBonus
//
//
//salary.salaryAfterBonus = 2000
//salary.salary



//let closure = {(item1: Int, item2: Double)->Bool in
//
//}

//let noValue: Int? = nil



















































