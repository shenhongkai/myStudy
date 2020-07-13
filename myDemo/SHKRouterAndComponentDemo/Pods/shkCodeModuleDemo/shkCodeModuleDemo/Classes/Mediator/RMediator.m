//
//  RMediator.m
//  SHKRouterAndComponentDemo
//
//  Created by 申鸿凯 on 2019/12/12.
//  Copyright © 2019 shenhk. All rights reserved.
//

#import "RMediator.h"

@implementation RMediator
+ (instancetype)share {
    static RMediator *mediator = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mediator = [RMediator new];
    });
    return mediator;
}

/// 此方法就是一个拦截器，可做容错以及动态调度
- (id)performTarget:(NSString *)target action:(NSString *)action params:(NSDictionary *)params {
    
    Class cls; id obj; SEL sel;
    
    cls = NSClassFromString(target);
    if (!cls) goto fail;
    sel = NSSelectorFromString(action);
    if (!sel) goto fail;
    obj = [cls new];
    if (![obj respondsToSelector:sel]) goto fail;
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    return [obj performSelector:sel withObject:params];
#pragma clang diagnostic pop
    
fail:
    NSLog(@"找不到目标，写容错逻辑");
    return nil;
}

@end
