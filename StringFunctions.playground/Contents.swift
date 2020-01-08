//Structs

struct Person {
    var name: String
}

let firstPerson = Person(name: "ravi")
//print(firstPerson.name)


struct Temperature {
    var celcius: Double
    
    init(celcius: Double) {
        self.celcius = celcius
    }
    
    init(farenheit: Double) {
        celcius = (farenheit-32)/1.8
    }
}


