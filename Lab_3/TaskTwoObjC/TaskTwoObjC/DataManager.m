#import <Foundation/Foundation.h>
#import "DataManager.h"

@implementation DataManager

- (instancetype) initWithData:(NSArray *)data {
    self = [super init];
    if (self) {
        _data = data;
    }
    return self;
}

- (NSMutableSet*) getSet {
    if ([_data count] < 4) {
        return nil;
    }
    
    NSMutableSet* temp = [[NSMutableSet alloc] init];
    NSInteger numbOfElementsInSet = [self getRandomNumberBetween:4 maxNumber:7];
    
    while ([temp count] != numbOfElementsInSet) {
        NSInteger randDataObjIndex = [self getRandomNumberBetween:0 maxNumber:[_data count]-1];
        [temp addObject:_data[randDataObjIndex]];
    }
    
    return temp;
}

- (NSInteger)getRandomNumberBetween:(NSInteger)min maxNumber:(NSInteger)max {
    return min + arc4random_uniform((uint32_t)(max - min + 1));
}

@end

