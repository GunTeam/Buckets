//
//  Rope.h
//  BucketsGame
//
//  Created by Jottie Brerrin on 11/21/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

#import "SpringJoint.h"


@interface Rope : CCSprite {
    
}
/*
 initialize the rope.
 
 Args:
    LinksOf : number of links in the rope
    Length : length of each link
 */
+(Rope *)initWith:(int) LinksOf :(CGFloat)Length;
-(void)setHead:(CCPhysicsBody*)head;
-(void)setTail:(CCPhysicsBody*)tail;

@property CCPhysicsBody *head;
@property CCPhysicsBody *tail;


@end
