#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    if (self.count == 0) {
        return nil;
    }
    
    NSInteger left = 0;
    NSInteger right = self.count - 1;
    
    if ([self[left] intValue] <= [self[right] intValue]) {
        return self[left];
    }
    
    while (left < right) {
        NSInteger mid = left + (right - left) / 2;
        
        if ([self[mid] intValue] > [self[right] intValue]) {
            left = mid + 1;
        } else {
            right = mid;
        }
    }
    
    return self[left];
}

@end
