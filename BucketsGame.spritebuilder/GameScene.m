//
//  GameScene.m
//  BucketsGame
//
//  Created by Jottie Brerrin on 11/20/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "GameScene.h"
#import "UITouch+CC.h"

float ballDropInterval = 2;

@implementation GameScene

-(void) didLoadFromCCB{
    
    self.userInteractionEnabled = true;
    
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        screenWidth = screenWidth/2;
        screenHeight = screenHeight/2;
    }
    
    CCLOG(@"game scene loaded");
    physicsNode = [[CCPhysicsNode alloc]init];
    physicsNode.gravity = CGPointMake(0, -300);
    [self addChild:physicsNode z:1];
    physicsNode.collisionDelegate = self;
    
    springBucket = (SpringBucket *)[CCBReader load:@"RopeBucket"];
    springBucket.position = CGPointMake(screenWidth/2, screenHeight/2);
    [physicsNode addChild:springBucket];
    
    ballSet = [[NSMutableArray alloc]init];
        
    physicsNode.debugDraw = false;
    
    [self schedule:@selector(ballDrop:) interval:ballDropInterval];
    [self schedule:@selector(checkBalls:) interval:.25];
}

-(void)emit:(CCTime)dt {
    CCNode *particles;
    particles = [CCBReader load:@"BlueParticles"];
    particles.position = CGPointMake(screenWidth/2, screenHeight/2);
    particles.scale = .2;
    [physicsNode addChild:particles];
}

-(void) checkBalls :(CCTime)dt{
    NSLog([NSString stringWithFormat:@"nmber of balls in set = %ul",[ballSet count]]);
}

-(void) ballDrop:(CCTime)dt{
    Ball *ball = (Ball *)[CCBReader load:@"Ball"];
    ball.position = CGPointMake((int)(arc4random()%((int)screenWidth - 50)+25), screenHeight +25);
    int ballColor = arc4random() % 4;
    [ball setBallColor:ballColor];
    [physicsNode addChild:ball];
    [ballSet addObject:ball];
    NSInteger ballNum = [ballSet count];
    
    Alert *alert = (Alert *) [CCBReader load:@"Alert"];
    alert.position = CGPointMake(ball.position.x, screenHeight - 25);
    [alert setAlertColor:ballColor];
    [self addChild:alert];
    
}

-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    CGPoint touchLocation = [touch locationInNode:self];
    springBucket.position = CGPointMake((touchLocation.x - springBucket.position.x)*.15 + springBucket.position.x, springBucket.position.y);
}

-(void)touchMoved:(UITouch *)touch withEvent:(UIEvent *)event{
    CGPoint touchLocation = [touch locationInNode:self];
    springBucket.position = CGPointMake((touchLocation.x - springBucket.position.x)*.15 + springBucket.position.x, springBucket.position.y);
}

- (BOOL)ccPhysicsCollisionBegin:(CCPhysicsCollisionPair *)pair ball:(Ball *)ball bucket:(Bucket *)bucket {
    
    [ball emitParticles];
    return true;
}

@end
