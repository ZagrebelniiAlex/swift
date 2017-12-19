#import <Foundation/Foundation.h>
#import "BaseCar.h"

@implementation BaseCar

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _carName = name;
    }
    
    return self;
}

- (void) about {
    NSLog(@"Car name is %@", _carName);
}

@end
