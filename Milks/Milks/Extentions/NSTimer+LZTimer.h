//
//  NSTimer+LZTimer.h
//  Milks
//
//  Created by sooLe on 2019/6/20.
//  Copyright © 2019 sooLe. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimer (LZTimer)

+ (NSTimer *)lz_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats  block:(void (^)(void))block;




@end

NS_ASSUME_NONNULL_END
