//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSSortDescriptor *alphabetize = [[NSSortDescriptor alloc]initWithKey:nil ascending:YES];
    return [characterArray sortedArrayUsingDescriptors:@[alphabetize]];
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    for (NSString *characterName in characterArray) {
        NSString *lowerCaseCharacter = characterName.lowercaseString;
        NSRange worfRange = [lowerCaseCharacter rangeOfString:@"worf"];
        
        if (worfRange.location != NSNotFound) {
            return YES;
        }
    }
    return NO;
}

@end
