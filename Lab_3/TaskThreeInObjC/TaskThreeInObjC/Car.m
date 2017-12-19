#import <Foundation/Foundation.h>
#import "Car.h"

@implementation Car

-(instancetype)initWithName:(NSString *)name model:(NSString *)model year:(int)year {
    self = [super init];
    if (self) {
        self._name = name;
        self._model = model;
        self._year = year;
    }

    return self;
}

-(BOOL) isEqualTo: (Car *)car {
    return (self._name == car._name && self._model == car._model);
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<car_name: %@  car_model: %@>", self._name, self._model];
}

-(id) copyWithZone: (NSZone *) zone {
    Car* carCopy = [[Car alloc] initWithName:self._name model:self._model year:self._year];
    return carCopy;
}

@end
