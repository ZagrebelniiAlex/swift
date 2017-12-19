import UIKit


//1
class Car: NSCopying, Equatable, CustomStringConvertible {
    
    var name: String
    var model: String
    var year: Int
    
    init(name: String, model: String, year: Int) {
        self.name = name
        self.model = model
        self.year = year
    }
    
    //NSCopying protocol
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = Car(name: self.name, model: self.model, year: self.year)
        return copy
    }
    
    //Equatable protocol
    public static func ==(lcar: Car, rcar: Car) -> Bool {
        return lcar.name == rcar.name && lcar.model == rcar.model
    }
    
    // CustomStringConvertible protocol
    public var description: String {
        return "Name: " + name + " ,model: " + model + " ,year: " + String(year)
    }

}

//2
let bmw2005 = Car(name: "BMW", model: "M3", year: 2005)
let bmw2007 = Car(name: "BMW", model: "M3", year: 2007)
let bmw2009 = Car(name: "BMW", model: "M4", year: 2007)
bmw2005 == bmw2007
bmw2009 == bmw2007

//3
let car1 = Car(name: "car_1", model: "model_1", year: 1997)
let car2 = car1.copy() as! Car

print(car1)
print(car2)

