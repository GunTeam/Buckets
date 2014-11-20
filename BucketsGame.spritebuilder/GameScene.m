//
//  GameScene.m
//  BucketsGame
//
//  Created by Jottie Brerrin on 11/20/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "GameScene.h"

float ballDropInterval = 1;

@implementation GameScene

-(void) didLoadFromCCB{
    
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    
    CCLOG(@"game scene loaded");
    physicsNode = [[CCPhysicsNode alloc]init];
    physicsNode.gravity = CGPointMake(0, -30);
    [self addChild:physicsNode z:1];
    physicsNode.collisionDelegate = self;
    
    Bucket *bucket = (Bucket *)[CCBReader load:@"Bucket"];
    bucket.position = CGPointMake(screenWidth/2, screenHeight/2);
    [physicsNode addChild:bucket];
    
    CCLabelTTF *label = [CCLabelTTF labelWithString:@"Jorrie" fontName:@"Arial" fontSize:12];
    label.color = [CCColor colorWithCcColor3b:ccBLACK];
    label.position = bucket.position;
    [self addChild:label];
    
    [self schedule:@selector(ballDrop:) interval:ballDropInterval];
    
}

-(void) ballDrop:(CCTime)dt{
    Ball *ball = (Ball *)[CCBReader load:@"Ball"];
    ball.position = CGPointMake(160, 530);
    [physicsNode addChild:ball];

}

@end
