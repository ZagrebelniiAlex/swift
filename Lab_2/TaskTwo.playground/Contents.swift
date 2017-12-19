import UIKit

var str = "Hello World. This is Swift programming language"

//1
str.characters.count

//2
str = str.replacingOccurrences(of: "i", with: "u", options: .literal, range: nil)

//3
str.remove(at: str.index(str.startIndex, offsetBy: 3))
str.remove(at: str.index(str.startIndex, offsetBy: 6))
str.remove(at: str.index(str.startIndex, offsetBy: 9))
str

//4
str = str + " (modified)"

//5
str.isEmpty

//6
str = str + "."

//7
str.hasPrefix("Hello")

//8
str.hasSuffix("World")

//9
str.insert("-", at:  str.index(str.startIndex, offsetBy: 10))

//10
str.replacingOccurrences(of: "Thus us", with: "It is", options: .literal, range: nil)

//11
str[str.index(str.startIndex, offsetBy: 9)]
str[str.index(str.startIndex, offsetBy: 14)]

//12
str
let start = str.index(str.startIndex, offsetBy: 9)
let end = str.index(start, offsetBy: 5)
let range = start..<end

str.substring(with: range)

