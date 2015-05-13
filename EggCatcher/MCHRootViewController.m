//
//  GameViewController.m
//  EggCatcher
//
//  Created by Marc Henderson on 2015-05-12.
//  Copyright (c) 2015 Marc Henderson. All rights reserved.
//

#import "MCHRootViewController.h"
#import "MCHMenuScene.h"
#import <SceneKit/SceneKit.h>

@implementation MCHRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;

    // Create and configure the scene.
    MCHMenuScene *scene = [MCHMenuScene unarchiveFromFile:@"MCHMenuScene"];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    /* Sprite Kit applies additional optimizations to improve rendering performance */
    skView.ignoresSiblingOrder = YES;

    // Present the scene.
    [skView presentScene:scene];
}

- (BOOL)shouldAutorotate {
    return YES;
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations {
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
