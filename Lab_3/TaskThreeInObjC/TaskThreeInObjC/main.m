#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Car *bmwM3_1 = [[Car alloc] initWithName:@"bmw" model:@"m3" year:2003];
        Car *bmwM3_2 = [[Car alloc] initWithName:@"bmw" model:@"m3" year:2005];
        Car *bmwM6 = [[Car alloc] initWithName:@"bmw" model:@"m6" year:2010];
        
        if ([bmwM3_1 isEqualTo:bmwM3_2]) {
            NSLog(@"%@ and %@ is equal", bmwM3_1, bmwM3_2);
        } else {
            NSLog(@"%@ and %@ is not equal", bmwM3_1, bmwM3_2);
        }
        
        if ([bmwM6 isEqualTo:bmwM3_2]) {
            NSLog(@"%@ and %@ is equal", bmwM6, bmwM3_2);
        } else {
            NSLog(@"%@ and %@ is not equal", bmwM3_1, bmwM3_2);
        }
        
        Car* car1 = [[Car alloc]initWithName:@"car1" model:@"model1" year:2012];
        Car* car2 = [car1 copy];

        NSLog(@"Copying car2: %@",car2);
        
    }
    return 0;
}
