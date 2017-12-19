#import <Foundation/Foundation.h>

@interface BaseCar : NSObject
{
    NSString *_carName;
}

- (id)initWithName:(NSString *)name;
- (void)about;
@end
