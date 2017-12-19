#import <Foundation/Foundation.h>
#import "DataManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DataManager* mng = [[DataManager alloc] initWithData:@[@"name_1", @"name_2", @"name_3",
                                                               @"name_4",@"name_5",
                                                               @"name_6", @"name_7",
                                                               @"name_8", @"name_9", @"name_10"]];
        
        NSMutableSet* A = [mng getSet];
        NSMutableSet* B = [mng getSet];
        NSMutableSet* C = [mng getSet];
        
        //1
        [A intersectsSet:B];
        [A unionSet:C];
        NSLog(@"Expr_1: %@", A);
        
        //2
        [A minusSet:C];
        [A unionSet:B];
        NSLog(@"Expr_2: %@", A);
        
        //3
        [A unionSet:B];
        [C minusSet:A];
        [A intersectSet:C];
        NSLog(@"Expr_2 -  A:%@ \nC:%@", A, C);
        
        
        
    }
    return 0;
}
