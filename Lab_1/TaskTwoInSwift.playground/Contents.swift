import UIKit

class BaseCar {
    
    internal var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func about() {
        print("Car info: '\(name)'")
    }
    
}

final class Car: BaseCar {
    
    func takePassanger(passangerName: String) {
        print("The passanger '\(passangerName)' is relocated by '\(self.name)'")
    }
    
}

final class BigCar: BaseCar {
    
    func moveObjectWith(weight: Int) {
        print("Object with weight '\(weight)' is moved by '\(self.name)'")
    }
    
}

let kamaz = BigCar(name: "Kamaz")
kamaz.about()
kamaz.moveObjectWith(weight: 32)

let bmw = Car(name: "BMW")
bmw.about()
bmw.takePassanger(passangerName: "Ivan")


