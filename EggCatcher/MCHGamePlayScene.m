//
//  MCHGamePlayScene.m
//  EggCatcher
//
//  Created by Marc Henderson on 2015-05-12.
//  Copyright (c) 2015 Marc Henderson. All rights reserved.
//

#import "MCHGamePlayScene.h"
#import "MCHMenuScene.h"
#import "MCHRootViewController.h"

@implementation MCHGamePlayScene

-(id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        self.menuLabel = (SKLabelNode *)[self childNodeWithName:@"menu"];
        self.menuButton = [SKSpriteNode spriteNodeWithColor:[UIColor clearColor] size:CGSizeMake(self.menuLabel.frame.size.width,self.menuLabel.frame.size.height)];
        self.menuButton.position = CGPointMake(self.menuLabel.position.x,self.menuLabel.position.y);
        [self addChild:self.menuButton];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    if([node isEqual:self.menuButton]){
        NSLog(@"menu hit.");
        MCHMenuScene *menuScene = [MCHMenuScene unarchiveFromFile:@"MCHMenuScene"];
        SKTransition *doors = [SKTransition doorsOpenHorizontalWithDuration:0.5];
        [self.view presentScene:menuScene transition:doors];
    }
}

@end
