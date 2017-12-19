import UIKit

//1
let emplOne: [String : Any] = ["Name": "Person_1", "Age": 30, "Salary": 1000]
let emplTwo: [String : Any] = ["Name": "Person_2", "Age": 35, "Salary": 2000]
let emplThree: [String : Any] = ["Name": "Person_3", "Age": 45, "Salary": 3000]
let emplFour: [String : Any] = ["Name": "Person_4", "Age": 50, "Salary": 4000]
let emplFive: [String : Any] = ["Name": "Person_5", "Age": 55, "Salary": 5000]

//2
var emplList: [[String: Any]] = [emplOne, emplTwo, emplThree, emplFour, emplFive]

//3
print("---3---")
var max = emplList.first
for empl in emplList {
    if empl["Age"] as! Int > max?["Age"] as! Int {
        max = empl
    }
}
print(max!)

//4
print("---4---")
for empl in emplList {
    if empl["Salary"] as! Int >= 2000 {
        print(empl)
    }
}

//5
print("---5---")
var sum: Int = 0
for empl in emplList {
    sum += empl["Salary"] as! Int
}
print(sum)

//6


print("---6---")
emplList = emplList.filter{ ($0["Age"] as! Int) < 50 }
print(emplList)
