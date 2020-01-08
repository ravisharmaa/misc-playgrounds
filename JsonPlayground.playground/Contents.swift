import UIKit

struct User: Codable {
    var first_name: String
    var last_name:  String
    var country:    String
}

let jsonString = """
{
"first_name": "John",
"last_name": "Doe",
"country": "United Kingdom"
}
"""

let jsonData = jsonString.data(using: .utf8)!
let user = try! JSONDecoder().decode(User.self, from: jsonData)
print(user)
