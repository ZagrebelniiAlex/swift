#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *first = [Fraction fractionWithNumerator:3 denominator:4];
        Fraction *second = [Fraction fractionWithNumerator:1 denominator:2];

        Fraction *third = [first fractionByAddingFraction: second];
        NSLog(@"%@ + %@ is %@", first, second, third);
        
        Fraction *third1 = [first fractionBySubstractionFraction: second];
        NSLog(@"%@ - %@ is %@", first, second, third1);
        
        Fraction *third2 = [first fractionByMultipleFraction: second];
        NSLog(@"%@ * %@ is %@", first, second, third2);
        
        Fraction *third3 = [first fractionByDivideFraction: second];
        NSLog(@"%@ / %@ is %@", first, second, third3);
        
    }
    return 0;
}
