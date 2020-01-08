//: Playground - noun: a place where people can play

//import UIKit

class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    var country: String = "Nepal"
    
    init(givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    var displayName: String {
        return "\(fullName())- Location:\(country)"
    }
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
}

final class Friend: Person {
    var whereWeMet: String?
    
    override var displayName: String{
        return "\(super.displayName) - \(whereWeMet ?? "Dont know!")"
    }
}

final class Family: Person {
    let relationShip: String
    
    init(givenName: String, middleName: String, familyName: String = "Moon",relationShip: String ) {
        self.relationShip = relationShip
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
    
    override var displayName: String {
        return "\(super.displayName) - \(relationShip)"
    }
}

let steve = Person(givenName: "Steve", middleName: "Paul", familyName: "Jobs")

let dan = Friend(givenName: "Daniel", middleName: "James", familyName: "Woodel")
dan.whereWeMet = "At the office"

let finnlet = Family(givenName: "Finnlet", middleName: "David", relationShip: "Son")

let dave = Family(givenName: "Dave", middleName: "deRidder", familyName: "Jones", relationShip: "father-in-law")
dave.country = "US"

print(steve.displayName)

print(dan.displayName)




