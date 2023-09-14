//
//  Person+Swizzling.m
//  Example
//
//  Created by Kristóf Kálai on 2023. 09. 14..
//

#import "Person.h"

@implementation Person (Swizzling)

- (void)customIntroduce {
    NSLog(@"Hello, I am a swizzled person.");
    [self customIntroduce];
}

@end
