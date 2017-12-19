import UIKit

class Fraction: CustomStringConvertible {
    
    
    var numerator: Int
    var denominator: Int
    
    public var description: String {
        return String(numerator) + " / " + String(denominator)
    }
    
    init?(_ numerator: Int, _ denominator: Int) {
        if denominator == 0 {
            return nil
        }
        
        self.numerator = numerator
        self.denominator = denominator
        
        self.reduce()
    }
    
    convenience init?() {
        self.init(0, 1)
    }
    
    convenience init?(numerator: Int) {
        self.init(numerator, 1)
    }
    
    static func + (first: Fraction, second: Fraction) -> Fraction {
        let numerator = (first.numerator * second.denominator) + (first.denominator * second.numerator)
        let denominator = (first.denominator * second.denominator)
        
        return Fraction(numerator, denominator)!
    }
    
    static func - (first: Fraction, second: Fraction) -> Fraction {
        let numerator = (first.numerator * second.denominator) - (first.denominator * second.numerator)
        let denominator = (first.denominator * second.denominator)
        
        return Fraction(numerator, denominator)!
    }
    
    static func * (first: Fraction, second: Fraction) -> Fraction {
        let numerator = first.numerator * second.numerator
        let denominator = first.denominator * second.denominator
        
        return Fraction(numerator, denominator)!
    }
    
    static func / (first: Fraction, second: Fraction) -> Fraction {
        let numerator = first.numerator * second.denominator
        let denominator = first.denominator * second.numerator
        
        return Fraction(numerator, denominator)!
    }
    
    private func reduce() {
        let gcd = greatestCommonDenominator(self.numerator, self.denominator)
        self.numerator /= gcd
        self.denominator /= gcd
    }
    
    private func greatestCommonDenominator(_ numbOne: Int,_ numbTwo: Int) -> Int {
        return numbTwo == 0 ? numbOne : greatestCommonDenominator(numbTwo, numbOne % numbTwo)
    }
    
}

let fractOne = Fraction(5, 7)
let fractTwo = Fraction(2, 4)

if let one = fractOne, let two = fractTwo {
    let sum = one + two
    let sub = one - two
    let mul = one * two
    let div = one / two
}

