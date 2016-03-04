//
//  GroundNode.m
//  SpaceCat
//
//  Created by Hickman on 3/2/16.
//  Copyright © 2016 Hickman. All rights reserved.
//

#import "GroundNode.h"
#import "Utility.h"

@implementation GroundNode

+ (instancetype) groundWithSize:(CGSize)size
{
    GroundNode *ground = [self spriteNodeWithColor:[SKColor greenColor] size:size];
    ground.name = @"Ground";
    ground.zPosition = -3;
    ground.position = CGPointMake(size.width/2,size.height/2);
    [ground setupPhysicsBody];
    return ground;
}

- (void) setupPhysicsBody
{
    self.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.frame.size];
    self.physicsBody.affectedByGravity = NO;
    self.physicsBody.dynamic = NO;
    self.physicsBody.categoryBitMask = CollisionCategoryGround;
    self.physicsBody.collisionBitMask = CollisionCategoryDebris;
    self.physicsBody.contactTestBitMask = CollisionCategoryEnemy;
}

@end
