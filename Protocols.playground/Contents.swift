//: Playground - noun: a place where people can play

import UIKit

protocol PersonProtocol {
    var firstName: String {get set}
    var lastName: String {get set}
    var birthDate: Date {get set}
    var profession: String {get set}
    
    init(firstName: String, lastName: String, birthDate: Date, profession: String)
}

class SwiftProgrammer: PersonProtocol {
    var firstName: String
    var lastName: String
    var birthDate: Date
    var profession: String
    
    required init(firstName: String, lastName: String, birthDate: Date, profession: String){
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
        self.profession = profession
        
    }
    
}


var myPerson: PersonProtocol

myPerson = SwiftProgrammer(firstName: "John",lastName: "Sharma", birthDate: Date(), profession: "developer")

print(myPerson.birthDate)
