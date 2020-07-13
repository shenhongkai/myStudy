//
//  RViewController.m
//  SHKRouterAndComponentDemo
//
//  Created by 申鸿凯 on 2019/12/12.
//  Copyright © 2019 shenhk. All rights reserved.
//

#import "RViewController.h"
#import "RMediator+RAim.h"

@interface RViewController ()

@end

@implementation RViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [RMediator.share gotoRAimControllerWithName:@"完全解耦" callBack:^{
        NSLog(@"BAim 回调");
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
