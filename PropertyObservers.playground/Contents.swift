//: Playground - noun: a place where people can play

//struct Person {
//    var clothes: String{
//        didSet{
//            updateUI(msg:"I just changed from \(oldValue) to \(clothes)")
//        }
//    }
//
//    mutating func updateUI(msg: String) {
//        print(msg)
//    }
//
//}
//
//var taylor = Person(clothes: "Tshirts")
//taylor.clothes = "short-shirks"



//var statusCode: Int = 408
//var errorMsg = "The request failed with an unknown response: "
//
//switch statusCode {
//case 400...404:
//    errorMsg = "Some thing is wrong wih the request, "
//    fallthrough
//default:
//    errorMsg += "Please Review again"
//}

//var statusCode: Int = 204
//var errorString: String = "The request failed with unknown error"
//
//switch  {
//case <#pattern#>:
//    <#code#>
//default:
//    <#code#>
//}
//
//for i in 1...10 {
//
//    if(i==3 ){
//        break
//    }
//    print(i)
//}

//var test: String = """
//this is a multiline sring
//and i can extend it to other levels
//"""

var greet :String = "hello"

//for letters in greet {
//    print(letters)
//}


var text: String = "bye bye"

//text.insert("g", at: text.endIndex)
text.insert(contentsOf: " there", at: text.index(before: text.endIndex))





























