//
//  RMediator+RAim.m
//  SHKRouterAndComponentDemo
//
//  Created by 申鸿凯 on 2019/12/12.
//  Copyright © 2019 shenhk. All rights reserved.
//

#import "RMediator+RAim.h"

static NSString * const kTarget = @"RAimTarget";
static NSString * const kAction = @"gotoRAimController:";

@implementation RMediator (RAim)

- (void)gotoRAimControllerWithName:(NSString *)name callBack:(void (^)(void))callBack {
    [self performTarget:kTarget action:kAction params:@{@"name":name, @"callBack":callBack}];
}

@end
