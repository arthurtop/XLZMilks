//
//  NSTimer+LZTimer.m
//  Milks
//
//  Created by sooLe on 2019/6/20.
//  Copyright © 2019 sooLe. All rights reserved.
//

#import "NSTimer+LZTimer.h"

@implementation NSTimer (LZTimer)

+ (NSTimer *)lz_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(void))block{
    return [self scheduledTimerWithTimeInterval:interval target:self selector:@selector(lz_blcokHandle:) userInfo:block repeats:YES];
    //这里面这个self,其实指的是当前的类对象，在内存中只存在一份，就是以单例的形式存在，所以我们在每一次创建实例变量都要通过这个类对象来创建，
    //所以并不需要担心当前的target造成循环引用，因为单例不需要被释放，只有当APP被Q的时候，存在内存中的单例才会被释放掉。
}

+ (void)lz_blcokHandle:(NSTimer *)timer{
    void(^block)(void) = timer.userInfo;
    if (block) {
        block();
    }
}

// ** 调用 **  //
/*
__weak typeof(self) weakSelf = self;
_timer = [NSTimer lz_scheduledTimerWithTimeInterval:1.0f repeats:YES block:^{
    __strong typeof(self) strongSelf = weakSelf;
    [strongSelf fire];
}]
 */



@end
