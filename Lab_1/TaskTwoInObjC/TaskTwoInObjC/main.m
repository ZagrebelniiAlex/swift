#import <Foundation/Foundation.h>
#import "BaseCar.h"
#import "Car.h"
#import "BigCar.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Car *bmw = [[Car alloc] initWithName:@"BMW"];
        [bmw about];
        [bmw takePassanger:@"Ivan"];
        
        BigCar *kamaz = [[BigCar alloc] initWithName:@"Kamaz"];
        [kamaz about];
        [kamaz moveObjectWithWeight:54];
        
    }
    return 0;
}
