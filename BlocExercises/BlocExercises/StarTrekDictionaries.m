//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    return [characterDictionary valueForKey:@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    // create an array to dump favorite drinks
    NSMutableArray *favoriteDrinkArray = [NSMutableArray array];
    
    // cycle through each characterDictionary in charactersArray & grab favorite drink
    for (NSDictionary *characterDictionary in charactersArray) {
        [favoriteDrinkArray addObject:[characterDictionary valueForKey:@"favorite drink"]];
    }
    return favoriteDrinkArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    // create a mutable dictionary from character dictionary
    NSMutableDictionary *mutableCharacterDictionary = [characterDictionary mutableCopy];
    // add a quote
    mutableCharacterDictionary[@"quote"] = @"The quick brown fox jumped over the lazy dog";
    // return the quote
    return mutableCharacterDictionary;
}

@end
