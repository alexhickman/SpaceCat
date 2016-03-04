//
//  SpaceCatNode.h
//  SpaceCat
//
//  Created by Hickman on 3/2/16.
//  Copyright © 2016 Hickman. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SpaceCatNode : SKSpriteNode

+ (instancetype) spaceCatAtPosition: (CGPoint)position;
- (void) performTap;

@end
