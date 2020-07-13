//
//  ViewController.m
//  13.1
//
//  Created by 申鸿凯 on 2019/12/19.
//  Copyright © 2019 shenhk. All rights reserved.
//

#import "ViewController.h"
#import "CMControllerHelper.h"
#import "AViewController.h"
#import "UIViewController+UI.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    // Do any additional setup after loading the view.
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"hahah");
    AViewController *aVC = [AViewController new];
    [YBTopNavigationController() pushViewController:aVC animated:YES];
  //  [UIViewController.yb_top.navigationController  pushViewController:aVC animated:YES];
    
    
   // UIViewController *topViewController = [CMControllerHelper topViewController];
    //[topViewController.navigationController pushViewController:aVC animated:YES];
    
    
}

@end
