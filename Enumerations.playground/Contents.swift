//: Playground - noun: a place where people can play

enum Title: String {
    case mr = "Mr"
    case mrs = "Mrs"
    case mister = "Master"
    case miss = "Miss"
    case dr = "Dr"
    case prof = "Prof"
    case other
    
    var isProfessional: Bool {
        return self == Title.dr || self == Title.prof
    }
}

let loganTitle = Title.mr


let xavierTitle = Title.prof

let raviTitle = Title.mister

print(loganTitle.isProfessional)

print(xavierTitle.isProfessional)

print(raviTitle.rawValue)



