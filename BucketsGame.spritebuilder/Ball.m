//
//  Ball.m
//  BucketsGame
//
//  Created by Jottie Brerrin on 11/20/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "Ball.h"


@implementation Ball

-(void) didLoadFromCCB{
    self.physicsBody.collisionMask = @[@"SpringBucket",@"Ball"];
    self.physicsBody.collisionCategories = @[@"Ball"];
}

@end
