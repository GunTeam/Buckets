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
    self.physicsBody.collisionType = @"ball";
    
    self.physicsBody.affectedByGravity = false;
    
    [self scheduleOnce:@selector(dropMe:) delay:2];
        
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;

    
    emit = true;
    
}

-(void) dropMe:(CCTime)dt{
    self.physicsBody.affectedByGravity = true;
}

-(void)emitParticles{
    if (emit) {
        emit = false;
        CCNode *particles;
        if (ballColor == 0) {
            particles = [CCBReader load:@"BlueParticles"];
        } else if (ballColor == 1){
            particles = [CCBReader load:@"OrangeParticles"];
        } else if (ballColor == 2){
            particles = [CCBReader load:@"PurpleParticles"];
        } else {
            particles = [CCBReader load:@"RedParticles"];
        }
        particles.scale = .15;
        particles.opacity = .5;
        particles.position = CGPointMake(self.position.x, self.position.y);
        [self.parent addChild:particles];
    }
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
