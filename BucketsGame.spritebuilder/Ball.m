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
    
    self.physicsBody.affectedByGravity = false;
    
    [self scheduleOnce:@selector(dropMe:) delay:2];
    
}

-(void) dropMe:(CCTime)dt{
    self.physicsBody.affectedByGravity = true;
}

-(void) setBallColor:(int)color{
    if (color == 0)/*blue*/ {
        [_redBall removeFromParent];
        [_purpleBall removeFromParent];
        [_orangeBall removeFromParent];
        ballColor = 0;
    } else if (color == 1)/*orange*/ {
        [_redBall removeFromParent];
        [_purpleBall removeFromParent];
        [_blueBall removeFromParent];
        ballColor = 1;
    } else if (color == 2)/*purple*/{
        [_redBall removeFromParent];
        [_blueBall removeFromParent];
        [_orangeBall removeFromParent];
        ballColor = 2;
    } else /*red*/ {
        [_blueBall removeFromParent];
        [_purpleBall removeFromParent];
        [_orangeBall removeFromParent];
        ballColor = 3;
    }
    
}

-(void) update:(CCTime)dt {
    if (self.position.y < -100){
        [self removeFromParent];
    }
}

-(int)getBallColor{
    return ballColor;
}
         
@end
