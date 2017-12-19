#ifndef Car_h
#define Car_h

@interface Car : NSObject<NSCopying>

@property NSString* _name;
@property NSString* _model;
@property int _year;


-(instancetype)initWithName:(NSString *)name model:(NSString *)model year:(int)year;
-(BOOL) isEqualTo: (Car *)car;
- (NSString *)description;
-(id) copyWithZone: (NSZone *) zone;
@end

#endif /* Car_h */
