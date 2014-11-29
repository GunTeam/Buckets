//
//  Bucket.m
//  BucketsGame
//
//  Created by Jottie Brerrin on 11/20/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "Bucket.h"


@implementation Bucket

-(void) didLoadFromCCB{
    
    self.physicsBody.collisionCategories = @[@"SpringBucket"];
    self.physicsBody.collisionMask = @[@"Ball"];
    self.physicsBody.collisionType = @"bucket";
}

@end
