//
//  PMediator+PAim.m
//  SHKRouterAndComponentDemo
//
//  Created by 申鸿凯 on 2019/12/12.
//  Copyright © 2019 shenhk. All rights reserved.
//

#import "PMediator+PAim.h"
#import "PAimViewController.h"

#import "UIViewController+UI.h"

@implementation PMediator (PAim)

+ (void)gotoPAimControllerWithName:(NSString *)name callBack:(void (^)(void))callBack {
    PAimViewController *vc = [PAimViewController new];
    vc.name = name;
    vc.callBack = callBack;
    [YBTopNavigationController() pushViewController:vc animated:YES];
}

@end
