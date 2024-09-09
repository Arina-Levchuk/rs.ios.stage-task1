#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    if (!number) {
        return @[];
    }
    
    NSString *stringFromNumber = [[number stringValue] stringByReplacingOccurrencesOfString:@"-" withString:@""];
    
    NSMutableArray *reversedArray = [NSMutableArray arrayWithCapacity:stringFromNumber.length];
    
    for (NSInteger index = stringFromNumber.length - 1; index >= 0; index--) {
        NSString *charItem = [NSString stringWithFormat:@"%C", [stringFromNumber characterAtIndex:index]];
        [reversedArray addObject:charItem];
    }
    
    return [reversedArray copy];
}

@end
