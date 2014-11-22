//
//  SpringBucket.m
//  BucketsGame
//
//  Created by Jottie Brerrin on 11/21/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "SpringBucket.h"
#import "SpringJoint.h"

@implementation SpringBucket

-(void) didLoadFromCCB{
    
    _bucket.physicsBody.collisionCategories = @[@"SpringBucket"];
    _ball.physicsBody.collisionCategories = @[@"SpringBall"];
    _bucket.physicsBody.collisionMask = @[@"Ball"];

}

//-(void) createRope: (int) numLinks{
//    SpringJoint *currentNode = (SpringJoint *)[CCBReader load:@"SpringJoint"];
//    for (int i = 1; i < numLinks; i++){
//        SpringJoint *nextNode = (SpringJoint *)[CCBReader load:@"SpringJoint"];
//        CCPhysicsJoint *joint = [CCPhysicsJoint connectedDistanceJointWithBodyA:currentNode.physicsBody bodyB:nextNode.physicsBody anchorA:currentNode.position anchorB:nextNode.position minDistance:5 maxDistance:10];
//        
//        
//    }
//}

@end
