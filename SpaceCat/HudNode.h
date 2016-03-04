//
//  HudNode.h
//  SpaceCat
//
//  Created by Hickman on 3/3/16.
//  Copyright © 2016 Hickman. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface HudNode : SKNode

@property (nonatomic) NSInteger lives;
@property (nonatomic) NSInteger score;

+ (instancetype) hudAtPosition:(CGPoint)position inFrame:(CGRect)frame;
- (void) addPoints:(NSInteger)points;
- (BOOL) loseLife;

@end
