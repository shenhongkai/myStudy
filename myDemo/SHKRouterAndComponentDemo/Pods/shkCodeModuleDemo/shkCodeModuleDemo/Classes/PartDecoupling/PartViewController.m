//
//  PartViewController.m
//  SHKRouterAndComponentDemo
//
//  Created by 申鸿凯 on 2019/12/12.
//  Copyright © 2019 shenhk. All rights reserved.
//

#import "PartViewController.h"
#import "PMediator+PAim.h"

@interface PartViewController ()

@end

@implementation PartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [PMediator gotoPAimControllerWithName:@"不完全" callBack:^{
        NSLog(@"PAim CallBack");
    }];
}
@end
