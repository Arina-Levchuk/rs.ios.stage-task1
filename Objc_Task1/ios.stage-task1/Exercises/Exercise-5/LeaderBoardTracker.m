#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    if (rankedArray.count == 0) {
        NSMutableArray *alonePlayerRankArray = [NSMutableArray array];
        for (NSInteger index = 0; index < playerArray.count; index++) {
            [alonePlayerRankArray addObject:@(1)];
        }
        return [alonePlayerRankArray copy];
    }
    
    if (playerArray.count == 0) {
        return @[];
    }
    
    NSOrderedSet *uniqueRankSet = [NSOrderedSet orderedSetWithArray:rankedArray];
    NSArray *uniqueRankArray = [uniqueRankSet array];
    
    NSMutableArray *resultsArray = [NSMutableArray array];
    NSInteger rankIndex = uniqueRankArray.count - 1;
    
    for (NSNumber *playerScore in playerArray) {
        while (rankIndex >= 0 && [playerScore intValue] >= [uniqueRankArray[rankIndex] intValue]) {
            rankIndex--;
        }
        [resultsArray addObject:@(rankIndex + 2)];
    }
    
    return [resultsArray copy];
}

@end
