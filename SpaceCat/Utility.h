//
//  Utility.h
//  SpaceCat
//
//  Created by Hickman on 3/2/16.
//  Copyright © 2016 Hickman. All rights reserved.
//

#import <Foundation/Foundation.h>

static const int kProjectileSpeed = 400;
static const int kSpaceDogMinSpeed = -100;
static const int kSpaceDogMaxSpeed = -50;
static const int kMaxLives = 4;
static const int kPointsPerHit = 100;

typedef NS_OPTIONS(uint32_t, CollisionCategory) {
    CollisionCategoryEnemy      = 1 << 0,  //0000
    CollisionCategoryProjectile = 1 << 1,  //0010
    CollisionCategoryDebris     = 1 << 2,  //0100
    CollisionCategoryGround     = 1 << 3   //1000
};

@interface Utility : NSObject

+ (NSInteger) randomWithMin:(NSInteger)min max:(NSInteger)max;

@end
