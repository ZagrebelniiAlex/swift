import UIKit

//1
var names  = ["Name_1", "Name_2", "Name_3", "Name_4", "Name_5",
              "Name_6", "Name_7", "Name_8", "Name_9", "Name_10"]

func randomNumber(range: ClosedRange<Int> = 0...1) -> Int {
    let min = range.lowerBound
    let max = range.upperBound
    return Int(arc4random_uniform(UInt32(1 + max - min))) + min
}

func initWithNames(fromSource source: [String]) -> Set<String> {
    var temp: Set<String> = []
    
    while temp.count <= randomNumber(range: 3...7) {
        temp.insert(source[randomNumber(range: 0...source.count-1)])
    }
    
    return temp
}

//2
var A = initWithNames(fromSource: names)
var B = initWithNames(fromSource: names)
var C = initWithNames(fromSource: names)

//3
let expr1 = (A.intersection(B)).union(C)
let expr2 = (A.subtracting(C)).union(B)
let expr3 = (A.union(B)).intersection(C.subtracting(A))

print(expr1)
print(expr2)
print(expr3)