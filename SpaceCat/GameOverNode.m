//
//  GameOverNode.m
//  SpaceCat
//
//  Created by Hickman on 3/3/16.
//  Copyright © 2016 Hickman. All rights reserved.
//

#import "GameOverNode.h"

@implementation GameOverNode

+ (instancetype) gameOverAtPosition:(CGPoint)position
{
    GameOverNode *gameOver = [self node];
    
    SKLabelNode *gameOverLabel = [SKLabelNode labelNodeWithFontNamed:@"Futura-CondensedExtraBold"];
    gameOverLabel.name = @"GameOver";
    gameOverLabel.text = @"Game Over!";
    gameOverLabel.fontSize = 48;
    gameOverLabel.position = position;
    gameOverLabel.zPosition = 15;
    [gameOver addChild:gameOverLabel];

    return gameOver;
}

- (void) performAnimation
{
    SKLabelNode *label = (SKLabelNode *)[self childNodeWithName:@"GameOver"];
    label.xScale = 0;
    label.yScale = 0;
    
    SKAction *scaleUp = [SKAction scaleTo:1.2f duration:0.75f];
    SKAction *scaleDown = [SKAction scaleTo:0.9f duration:0.25f];
    SKAction *run = [SKAction runBlock:^{
        SKLabelNode *touchToRestart = [SKLabelNode labelNodeWithFontNamed:@"Futura-CondensedExtraBold"];
        touchToRestart.text = @"Touch to Restart";
        touchToRestart.fontSize = 24;
        touchToRestart.position = CGPointMake(label.position.x, label.position.y-40);
        touchToRestart.zPosition = 15;
        [self addChild:touchToRestart];
    }];
    
    SKAction *scaleSequence = [SKAction sequence:@[scaleUp, scaleDown, run]];
    [label runAction:scaleSequence];
}

@end
