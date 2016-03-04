//
//  ProjectileNode.h
//  SpaceCat
//
//  Created by Hickman on 3/2/16.
//  Copyright © 2016 Hickman. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface ProjectileNode : SKSpriteNode

+ (instancetype) projectileAtPosition:(CGPoint)position;
- (void) moveTowardsPostion:(CGPoint)position;

@end
