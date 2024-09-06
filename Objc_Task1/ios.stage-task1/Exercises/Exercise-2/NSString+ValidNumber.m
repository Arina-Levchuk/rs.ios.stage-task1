#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    if (self.length >= 0 && self.length <= 100) {
        NSScanner *scanner = [NSScanner scannerWithString:self];
        double number;
        
        return [scanner scanDouble:&number] && [scanner isAtEnd];
    } else {
        return false;
    }
}

@end
