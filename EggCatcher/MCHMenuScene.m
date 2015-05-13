//
//  MCHMenuScene.m
//  EggCatcher
//
//  Created by Marc Henderson on 2015-05-12.
//  Copyright (c) 2015 Marc Henderson. All rights reserved.
//

#import "MCHMenuScene.h"
#import "MCHGamePlayScene.h"
#import "MCHRootViewController.h"

@implementation MCHMenuScene

-(id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        self.playGameLabel = (SKLabelNode *)[self childNodeWithName:@"newGame"];
        self.playGameButton = [SKSpriteNode spriteNodeWithColor:[UIColor clearColor] size:CGSizeMake(self.playGameLabel.frame.size.width,self.playGameLabel.frame.size.height)];
        self.playGameButton.position = CGPointMake(self.playGameLabel.position.x,self.playGameLabel.position.y);
        [self addChild:self.playGameButton];
    }
    return self;
}

/*
-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        self.playButton = [SKSpriteNode spriteNodeWithColor:[UIColor clearColor] size:CGSizeMake(100,100)];
        self.playButton.position = CGPointMake(100,100);
    }
    return self;
}
 */

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    if([node isEqual:self.playGameButton]){
        NSLog(@"play hit.");
        MCHGamePlayScene *gameScene = [MCHGamePlayScene unarchiveFromFile:@"MCHGamePlayScene"];
        SKTransition *doors = [SKTransition doorsOpenHorizontalWithDuration:0.5];
        [self.view presentScene:gameScene transition:doors];
    }
}

@end
