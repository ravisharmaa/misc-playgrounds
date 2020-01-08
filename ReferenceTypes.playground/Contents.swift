//: Playground - noun: a place where people can play


//class MovieReview {
//    let movieTitle: String
//    var rating: Int
//
//    init(movieTitle: String, rating: Int){
//        self.movieTitle = movieTitle
//        self.rating = rating
//    }
//
//
//}
//
//let inceptionReview = MovieReview(movieTitle: "Inception", rating: 4)
//
//let reviewLinkTwitter = inceptionReview
//let reviewFB = inceptionReview
//
//reviewLinkTwitter.rating
//reviewFB.rating
//
//
//inceptionReview.rating = 5
//
//reviewLinkTwitter.rating

//struct Video {
//    var height = 0
//    var width = 0
//}
//
//class Player {
//    var resolution = Video(height: 720, width: 440)
//    var interlaced: Bool
//    var frameRate: Double
//    var name: String
//
//    init(interlaced: Bool, frameRate: Double, name:String){
//        self.interlaced = interlaced
//        self.frameRate  = frameRate
//        self.name = name
//    }
//
//
//
//}
//
//var mobilePlayer = Player(interlaced: true, frameRate: 4.3, name: "Shape of you")
//mobilePlayer.resolution.height

struct PersonName {
    let givenName: String
    let middleName: String
    var familyName: String
    
    func fullName()->String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    mutating func change(familyName: String){
        self.familyName = familyName
    }
}

//var alissaName = PersonName(givenName: "alisaa", middleName: "May", familyName: "Jones")
//
//alissaName.fullName()
//
//alissaName.change(familyName: "bastola")
//
//alissaName.fullName()


class Person {
    let birthName: PersonName
    let currentName: PersonName
    var countryOfResidence: String
    
    init(name: PersonName, countryOfResidence: String = "UK") {
        birthName = name
        currentName = name
        self.countryOfResidence = countryOfResidence
    }
    
    var displayName: String {
        return "\(currentName.fullName()) - Location: \(countryOfResidence)"
    }
}

var name = PersonName(givenName: "Alissa", middleName: "May", familyName: "Jones")
let alissa = Person(name: name)
print(alissa.birthName.fullName())
alissa.displayName






















