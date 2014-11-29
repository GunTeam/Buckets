//
//  GameScene.h
//  BucketsGame
//
//  Created by Jottie Brerrin on 11/20/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Ball.h"
#import "Rope.h"
#import "SpringBucket.h"
#import "Alert.h"
#import "Bucket.h"

@interface GameScene : CCNode <CCPhysicsCollisionDelegate> {
    CCPhysicsNode *physicsNode;
    
    SpringBucket *springBucket;
    
    CGFloat screenWidth,screenHeight;
    
    NSMutableArray *ballSet;
}

@end
