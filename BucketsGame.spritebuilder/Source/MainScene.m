#import "MainScene.h"

@implementation MainScene

-(void)didLoadFromCCB{
    [[CCDirector sharedDirector] replaceScene:[CCBReader loadAsScene:@"GameScene"]];
}

@end
