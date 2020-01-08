func math(a: Int, b: Int) -> Int {
    return a + b
}


var add: (Int, Int) -> Int = math




func anotherMath(_ some: (Int, Int)-> Int, a: Int, b: Int) {
    print(some(a, b))
}

anotherMath(add, a: 4, b: 5)

func goAhead(a: Int) -> Int {
    return a + 1
}


func goBack(a: Int) -> Int {
    return a - 1
}

func choose(step: Bool) -> (Int) -> Int {
    return step ? goAhead : goBack
}

var step = choose(step: true)

print (step(1))

// Nested


func nestedFunc(backward: Bool) -> (Int) -> Int {
    
    func step(input: Int) -> Int {
        return input + 1
    }
    
    func revoke(input: Int) -> Int {
        return input - 1
    }
    
    return backward ? revoke : step
}

var another: (Bool) -> (Int) -> Int = nestedFunc

var something = another(true)

print(something(5))

let names = ["r", "b","v","w", "e","z"]




print(names.sorted(by: { (s1: String, s2: String) -> Bool in return s2 > s1 }))
// short hand

print(names.sorted(by: {(s1, s2) in return s2 < s1 }))

//more short hand

let someOtherSequence = ["a","e","u","i","f"]

//her $0 and $1 are first and second args
print(someOtherSequence.sorted(by: {$0 > $1}))

print(names.filter({(s1) in return s1 == "x"}))

print(names.map( { s1 in return s1 + "vbgg"} ) )

func makeIncrementer(increment amount: Int)->()->Int {
    var total = 0
    
    func increment()-> Int {
        total += amount
        return total
    }
    
    return increment
    
}

var data = makeIncrementer(increment: 3)
data()
print(data())

var completionhandlers: [()->Void] = []

func doSth(completionHandler: @escaping()-> Void) {
    completionhandlers.append(completionHandler)
}

typealias VoidFunc = ()->()

func wow(_ f: VoidFunc) {
    f()
}

wow {
    
}



