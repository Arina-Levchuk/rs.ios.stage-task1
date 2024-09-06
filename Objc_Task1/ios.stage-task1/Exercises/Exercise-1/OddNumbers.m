//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    NSInteger number = 0;
    
    for (NSNumber *value in array) {
        if ([value integerValue] % 2 != 0) {
            number++;
        }
    };
    
    return number;
}

@end
