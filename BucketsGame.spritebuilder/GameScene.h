//
//  GameScene.h
//  BucketsGame
//
//  Created by Jottie Brerrin on 11/20/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Bucket.h"
#import "Ball.h"
#import "Rope.h"
#import "SpringBucket.h"
#import "Alert.h"

@interface GameScene : CCNode <CCPhysicsCollisionDelegate> {
    CCPhysicsNode *physicsNode;
    
    Bucket *bucket;
    SpringBucket *springBucket;
    
    CGFloat screenWidth,screenHeight;
    
    NSMutableArray *ballSet;
}

@end
