//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    // If number and otherNumber are equal, return number (or otherNumber)
    // THIS WORKS!
    if (number == otherNumber) {
        return [NSString stringWithFormat:@"%ld", number];
    }
    
    // Set up variables for high/low numbers
    NSInteger lowNumber;
    NSInteger highNumber;
    
    // Test to see which number is lower/higher & assign variable
    if (number < otherNumber) {
        lowNumber = number;
        highNumber = otherNumber;
    } else {
        highNumber = number;
        lowNumber = otherNumber;
    }
    
    NSMutableString *newString = [NSMutableString string];
    
    // Construct the string starting at lowNumber, going to highNumber
    // sets starting point, end point, and interval
    for (NSInteger i = lowNumber; i <= highNumber; i++) {
        [newString appendFormat:@"%ld", (long)i];
    }
    
    return newString;
}

@end
