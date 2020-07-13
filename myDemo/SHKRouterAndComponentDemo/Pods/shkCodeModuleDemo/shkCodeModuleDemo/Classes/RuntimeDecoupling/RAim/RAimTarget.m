//
//  RAimTarget.m
//  SHKRouterAndComponentDemo
//
//  Created by 申鸿凯 on 2019/12/12.
//  Copyright © 2019 shenhk. All rights reserved.
//

#import "RAimTarget.h"
#import "RAimViewController.h"

#import "UIViewController+UI.h"
@implementation RAimTarget
- (void)gotoRAimController:(NSDictionary *)params
{
    RAimViewController *vc = [RAimViewController new];
    vc.name = params[@"name"];
    vc.callBack = params[@"callBack"];
    [UIViewController.yb_top.navigationController pushViewController:vc animated:YES];
}
@end
