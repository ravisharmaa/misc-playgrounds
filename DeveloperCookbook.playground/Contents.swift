var soundDictionary: [String:String] = ["cow":"moo", "dog":"bark"]
print(soundDictionary["cow"]!)

var janardan: Any = "Jana"

if let name = janardan as? String {
    print(name)
}
