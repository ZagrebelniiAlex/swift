#import "Fraction.h"

@implementation Fraction : NSObject

- (instancetype) initWithNumerator:(int)numerator denominator:(int)denominator {
    if (denominator == 0) {
        __unused int divisionByZero = numerator/denominator;
    }
    self = [super init];
    if (self) {
        _numerator = numerator;
        _denominator = denominator;
    }
    
    [self reduce];
    return self;
}

- (instancetype)init {
    return [self initWithNumerator:0 denominator:1];
}


+ (instancetype)fractionWithInteger:(int)integer {
    return [[self alloc] initWithNumerator:integer denominator:1];
}

+ (instancetype)fractionWithNumerator:(int)numerator denominator:(int)denominator {
    return [[self alloc] initWithNumerator:numerator denominator:denominator];
}


- (Fraction *)fractionByAddingFraction: (Fraction *)fraction {
    int newNumerator = self->_numerator * fraction->_denominator + self->_denominator * fraction->_numerator;
    int newDenominator = self->_denominator * fraction->_denominator;
    
    return [Fraction fractionWithNumerator:newNumerator denominator:newDenominator];
}

- (Fraction *)fractionBySubstractionFraction: (Fraction *)fraction {
    int newNumerator = self->_numerator * fraction->_denominator - self->_denominator * fraction->_numerator;
    int newDenominator = self->_denominator * fraction->_denominator;
    
    return [Fraction fractionWithNumerator:newNumerator denominator:newDenominator];
}

- (Fraction *)fractionByMultipleFraction: (Fraction *)fraction {
    int newNumerator = self->_numerator * fraction->_numerator;
    int newDenominator = self->_denominator * fraction->_denominator;
    
    return [Fraction fractionWithNumerator:newNumerator denominator:newDenominator];
}

- (Fraction *)fractionByDivideFraction: (Fraction *)fraction {
    int newNumerator = self->_numerator * fraction->_denominator;
    int newDenominator = self->_denominator * fraction->_numerator;
    
    return [Fraction fractionWithNumerator:newNumerator denominator:newDenominator];
}


-(void) reduce
{
    int u = _numerator;
    int v = _denominator;
    int temp;
    
    while (v)
    {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    _numerator /= u;
    _denominator /= u;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%i/%i", _numerator, _denominator];
}

@end
