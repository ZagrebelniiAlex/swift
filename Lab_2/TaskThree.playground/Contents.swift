import UIKit

var integerNumber: Int?

let decimalNumber: Double?

integerNumber = 5

integerNumber! += 1

integerNumber = -integerNumber!

decimalNumber = Double(integerNumber!)

var pairOrValues: Double! = Double(integerNumber!) + decimalNumber!

if pairOrValues.truncatingRemainder(dividingBy: 1) == 0 {
    print(pairOrValues)
}
if pairOrValues.truncatingRemainder(dividingBy: 1) != 0 {
    print(pairOrValues.truncatingRemainder(dividingBy: 1))
}

if let numb = pairOrValues {
    print(numb)
}