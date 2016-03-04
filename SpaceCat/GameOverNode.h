//
//  GameOverNode.h
//  SpaceCat
//
//  Created by Hickman on 3/3/16.
//  Copyright © 2016 Hickman. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface GameOverNode : SKNode

+ (instancetype) gameOverAtPosition:(CGPoint)position;
- (void) performAnimation;

@end
