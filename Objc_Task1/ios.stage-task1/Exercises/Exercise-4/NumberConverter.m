#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    if (!number) {
        return @[];
    }
    
    NSString *numberStr = [[number stringValue] stringByReplacingOccurrencesOfString:@"-" withString:@""];
    
    NSMutableArray *reversedArray = [NSMutableArray arrayWithCapacity:numberStr.length];
    
    for (NSInteger index = numberStr.length - 1; index >= 0; index--) {
        NSString *charItem = [NSString stringWithFormat:@"%C", [numberStr characterAtIndex:index]];
        [reversedArray addObject:charItem];
    }
    
    return [reversedArray copy];
}

@end
