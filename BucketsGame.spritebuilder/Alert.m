//
//  Alert.m
//  BucketsGame
//
//  Created by Jottie Brerrin on 11/22/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "Alert.h"


@implementation Alert

-(void)didLoadFromCCB{
    disposeCounter = 0;
    [self schedule:@selector(blink:) interval:.4];
}

-(void) blink:(CCTime)dt {
    if (disposeCounter ==3) {
        [self  removeFromParent];
    }
    disposeCounter ++;
    
    self.visible = !self.visible;
}

-(void)setAlertColor:(int)color{
    if (color == 0)/*blue*/ {
        [_red removeFromParent];
        [_purple removeFromParent];
        [_orange removeFromParent];
    } else if (color == 1)/*orange*/ {
        [_red removeFromParent];
        [_purple removeFromParent];
        [_blue removeFromParent];
    } else if (color == 2)/*purple*/{
        [_red removeFromParent];
        [_blue removeFromParent];
        [_orange removeFromParent];
    } else /*red*/ {
        [_blue removeFromParent];
        [_purple removeFromParent];
        [_orange removeFromParent];
    }
}


@end
