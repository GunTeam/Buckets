//
//  Alert.h
//  BucketsGame
//
//  Created by Jottie Brerrin on 11/22/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Alert : CCSprite {
    CCSprite *_blue,*_orange,*_purple,*_red;
    int disposeCounter;
}

-(void)setAlertColor:(int)color;

@end
