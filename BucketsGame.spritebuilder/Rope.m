//
//  Rope.m
//  BucketsGame
//
//  Created by Jottie Brerrin on 11/21/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "Rope.h"

@implementation Rope

+(Rope *)initWith:(int) LinksOf :(CGFloat)Length{
    Rope *rope;
//    CCPhysicsBody *currentNode = [CCBReader load:@"SpringJoint"];
//    SpringJoint *finalNode;
//    [rope addChild:currentNode];
//    rope.head = currentNode;
//    for (int i = 1; i<LinksOf ; i++){
//        CCPhysicsBody *nextNode = [CCBReader load:@"SpringJoint"];
//        nextNode.position = CGPointMake(0, -i*5);
//        [rope addChild:nextNode];
//        CCPhysicsJoint *joint = [CCPhysicsJoint connectedDistanceJointWithBodyA:currentNode.physicsBody bodyB:nextNode.physicsBody anchorA:currentNode.position anchorB:nextNode.position];
//        currentNode = nextNode;
//        finalNode = currentNode;
//    }
//    rope.tail = currentNode;
    
    return rope;
}

-(void)setHead:(CCPhysicsBody*)newHead{
    self.head = newHead;
    
}

-(void)setTail:(CCPhysicsBody*)newTail{
    self.tail = newTail;

}


@end
