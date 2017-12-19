#ifndef DataManager_h
#define DataManager_h

@interface DataManager : NSObject
{
    NSArray* _data;
}
- (instancetype)initWithData: (NSArray*) data;
- (NSInteger)getRandomNumberBetween:(NSInteger)min maxNumber:(NSInteger)max;
- (NSMutableSet*) getSet;
@end


#endif /* DataManager_h */
