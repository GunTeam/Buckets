//
//  Ball.h
//  BucketsGame
//
//  Created by Jottie Brerrin on 11/20/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Ball : CCSprite {
    CCSprite *_redBall,*_orangeBall,*_purpleBall,*_blueBall;
    
    int ballColor;
}

-(void)setBallColor:(int)color;
-(int)getBallColor;

@end
