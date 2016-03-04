//
//  Utility.m
//  SpaceCat
//
//  Created by Hickman on 3/2/16.
//  Copyright © 2016 Hickman. All rights reserved.
//

#import "Utility.h"

@implementation Utility

+ (NSInteger) randomWithMin:(NSInteger)min max:(NSInteger)max
{
    return arc4random()%(max-min) + min;
}

@end
