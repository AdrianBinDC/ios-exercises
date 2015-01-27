//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *fullSentence = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return fullSentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    NSMutableString *shortName = [cheeseName mutableCopy];
    NSRange cheeseRange = [shortName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    // I suspect there's a more elegant way to do this
    if (cheeseRange.location != NSNotFound) {
        [shortName replaceCharactersInRange:cheeseRange withString:@""];
        return shortName;
    } else {
        return shortName;
    }
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        NSString *cheeseString = (@"cheese");
        return [NSString stringWithFormat:@"%lu %@", cheeseCount, cheeseString];
    } else {
        NSString *cheeseString = (@"cheeses");
        return [NSString stringWithFormat:@"%lu %@", cheeseCount, cheeseString];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return nil;
}

@end
