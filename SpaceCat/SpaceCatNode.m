//
//  SpaceCatNode.m
//  SpaceCat
//
//  Created by Hickman on 3/2/16.
//  Copyright © 2016 Hickman. All rights reserved.
//

#import "SpaceCatNode.h"

@interface SpaceCatNode ()

@property (nonatomic) SKAction *tapAction;

@end

@implementation SpaceCatNode

+ (instancetype) spaceCatAtPosition: (CGPoint)position
{
    SpaceCatNode *spaceCat = [self spriteNodeWithImageNamed:@"spacecat_1"];
    spaceCat.position = position;
    spaceCat.zPosition = 10;
    spaceCat.anchorPoint = CGPointMake(0.5, 0);
    spaceCat.name = @"SpaceCat";
    return spaceCat;
}

- (void) performTap
{
    [self runAction:self.tapAction];
}

- (SKAction *) tapAction
{
    if (_tapAction != nil) {
        return _tapAction;
    }
    /*
    SKTextureAtlas *atlas = [SKTextureAtlas atlasNamed:@"Sprites"];
    SKTexture *f1 = [atlas textureNamed:@"spacecat_2"];
    SKTexture *f2 = [atlas textureNamed:@"spacecat_1"];
    NSArray *texture = @[f1,f2];
     */
    
    NSArray *texture = @[[SKTexture textureWithImageNamed:@"spacecat_2"], [SKTexture textureWithImageNamed:@"spacecat_1"]];
    
    _tapAction = [SKAction animateWithTextures:texture timePerFrame:0.25];
    return _tapAction;
}

@end
