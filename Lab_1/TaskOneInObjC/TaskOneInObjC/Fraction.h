#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int _numerator;
    int _denominator;
}

- (instancetype)initWithNumerator:(int)numerator denominator:(int)denominator;
- (instancetype)init;

+ (instancetype)fractionWithInteger:(int)integer;
+ (instancetype)fractionWithNumerator:(int)numerator denominator:(int)denominator;

- (Fraction *)fractionByAddingFraction: (Fraction *)fraction;
- (Fraction *)fractionBySubstractionFraction: (Fraction *)fraction;
- (Fraction *)fractionByMultipleFraction: (Fraction *)fraction;
- (Fraction *)fractionByDivideFraction: (Fraction *)fraction;

- (NSString *)description;

@end

