//
//  RootViewController.m
//  SHKRouterAndComponentDemo
//
//  Created by 申鸿凯 on 2019/12/12.
//  Copyright © 2019 shenhk. All rights reserved.
//

#import "RootViewController.h"
#import "RViewController.h"
#import "PartViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"非完全解耦" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.frame = CGRectMake(50, 200, 150, 40);
    button.titleLabel.font = [UIFont systemFontOfSize:20];
    [button addTarget:self action:@selector(partDecouplingAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button2 setTitle:@"Runtime完全解耦" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button2.frame = CGRectMake(50, 300, 200, 40);
    button2.titleLabel.font = [UIFont systemFontOfSize:20];
    [button2 addTarget:self action:@selector(runtimeDecouplingAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
}

- (void)partDecouplingAction{
    PartViewController *pVC = [PartViewController new];
    pVC.view.backgroundColor = [UIColor grayColor];
    pVC.navigationItem.title = @"非完全解耦";
    [self.navigationController pushViewController:pVC animated:YES];
}


- (void)runtimeDecouplingAction
{
    RViewController *rVC = [RViewController new];
    rVC.view.backgroundColor = [UIColor grayColor];
    rVC.navigationItem.title = @"Runtime完全解耦";
    [self.navigationController pushViewController:rVC animated:YES];
}


@end
