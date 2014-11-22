//
//  SpringJoint.m
//  BucketsGame
//
//  Created by Jottie Brerrin on 11/21/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "SpringJoint.h"


@implementation SpringJoint

-(void) didLoadFromCCB {
    self.physicsBody.collisionCategories = @[@"SpringBall"];
    self.physicsBody.collisionMask = @[];
}

@end
