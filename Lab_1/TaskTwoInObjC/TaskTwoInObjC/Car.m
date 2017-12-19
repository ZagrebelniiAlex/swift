#import <Foundation/Foundation.h>
#import "Car.h"

@implementation Car

- (void)takePassanger: (NSString *)passangerName {
    NSLog(@"The passanger '%@' is relocated by %@", passangerName, _carName);
}

@end
