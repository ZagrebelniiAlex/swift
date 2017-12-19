#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //1
        NSDictionary *emplOne = @{ @"name" : @"Name_1", @"age" : @25, @"salary" : @1000};
        NSDictionary *emplTwo = @{ @"name" : @"Name_2", @"age" : @30, @"salary" : @2000};
        NSDictionary *emplThree = @{ @"name" : @"Name_3", @"age" : @35, @"salary" : @3000};
        NSDictionary *emplFour = @{ @"name" : @"Name_4", @"age" : @40, @"salary" : @4000};
        NSDictionary *emplFive = @{ @"name" : @"Name_5", @"age" : @45, @"salary" : @5000};
        
        //2
        NSMutableArray *emplList = [NSMutableArray arrayWithCapacity: 5];
        [emplList addObject: emplOne];
        [emplList addObject: emplTwo];
        [emplList addObject: emplThree];
        [emplList addObject: emplFour];
        [emplList addObject: emplFive];
        
        //3
        NSLog(@"====3====");
        int maxAge = [[emplList objectAtIndex:0][@"age"] intValue];
        for (NSDictionary *empl in emplList) {
            if ( [empl[@"age"] intValue] > maxAge) {
                maxAge = [empl[@"age"] intValue];
            }
        }
        NSLog(@"Max age: %d", maxAge);
        
        //4
        NSLog(@"====4====");
        for (NSDictionary *empl in emplList) {
            if ([empl[@"salary"] intValue] >= 2000) {
                NSLog(@"%d", [empl[@"salary"] intValue]);
            }
        }
        
        //5
        NSLog(@"====5====");
        int salarySum = 0;
        for (NSDictionary *empl in emplList) {
            salarySum += [empl[@"salary"] intValue];
        }
        NSLog(@"Salary sum: %d", salarySum);
        
        //6
        NSLog(@"====6====");
        for (NSUInteger i = 0; i < [emplList count]; i++) {
            if ([emplList[i][@"age"] intValue] >= 50) {
                [emplList removeObjectAtIndex:i];
            }
        }
        NSLog(@"%@", emplList);
        
    }
    return 0;
}
