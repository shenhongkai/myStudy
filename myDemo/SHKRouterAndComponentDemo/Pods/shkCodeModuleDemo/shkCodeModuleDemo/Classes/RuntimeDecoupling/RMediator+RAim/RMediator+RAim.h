//
//  RMediator+RAim.h
//  SHKRouterAndComponentDemo
//
//  Created by 申鸿凯 on 2019/12/12.
//  Copyright © 2019 shenhk. All rights reserved.
//

#import "RMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface RMediator (RAim)
- (void)gotoRAimControllerWithName:(NSString *)name callBack:(void(^)(void))callBack;

@end

NS_ASSUME_NONNULL_END
