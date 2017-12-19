#import <Foundation/Foundation.h>
#import "BigCar.h"

@implementation BigCar

- (void) moveObjectWithWeight:(int)objectWeight {
    NSLog(@"Object with weight '%i' is moved by '%@'", objectWeight, _carName);
}

@end
