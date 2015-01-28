//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    return @([number floatValue] * 2);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    // Create variables for high & low numbers
    // This makes code more resilient if otherNumber is lower than number
    NSInteger lowNumber, highNumber;
    
    if (number < otherNumber) {
        lowNumber = number;
        highNumber = otherNumber;
    } else {
        lowNumber = otherNumber;
        highNumber = number;
    }
    
    NSMutableArray *numberArray = [NSMutableArray array];
    for (long i = lowNumber; i <= highNumber ; i++) {
        [numberArray addObject:@(i)];
    }
    
    /* WORK HERE */
    return numberArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    // create a variable for hte lowest number
    NSInteger smallestNumber = NSIntegerMax;
    
    // run through the array of numbers comparing integer value to current smallestNumber
    for (NSNumber *number in arrayOfNumbers) {
        NSInteger integerValue = [number integerValue];
        
        // if current integer is smaller than smallestNumber, it's assigned as smallestNumber
        if (integerValue < smallestNumber) {
            smallestNumber = integerValue;
        }
    }
    
    // returns the smallelstNumber after method's gone thru array    
    return smallestNumber;
}

@end
