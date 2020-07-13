//
//  BaseViewController.m
//  CCAnimation
//
//  Created by ZhangCc on 2018/5/30.
//  Copyright © 2018年 ZhangCc. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    _bgView = [[UIView alloc] initWithFrame:CGRectMake((SCREEN_WIDTH - 100)/2, SCREEN_HEIGHT/2 - 100, 100, 100)];
    _bgView.backgroundColor = [UIColor colorWithHexString:@"FF6BA0"];
//    _bgView.layer.cornerRadius = 5.0f;
//    _bgView.layer.masksToBounds = YES;
    [self.view addSubview:_bgView];
    
    _button = [UIButton new];
       _button.adjustsImageWhenHighlighted = NO;
    [_button setImage:[UIImage imageNamed:@"noZan"] forState:UIControlStateNormal];
 
   //  [_button setImage:[UIImage imageNamed:@"noZan"] forState:UIControlStateHighlighted];
    [_button setImage:[UIImage imageNamed:@"zan"] forState:UIControlStateSelected];
    [_button setTitle:@"福气" forState:UIControlStateNormal];
    _button.titleLabel.font = [UIFont systemFontOfSize:12];
     [_button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    _button.frame = CGRectMake((SCREEN_WIDTH - 100)/2, SCREEN_HEIGHT/2 - 250, 100, 100);
    [_button addTarget:self action:@selector(zanClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake((SCREEN_WIDTH - 80)/2, SCREEN_HEIGHT - 150, 80, 40);
    btn.backgroundColor = [UIColor colorWithHexString:@"30acff"];
    btn.layer.cornerRadius = 8.0;
    btn.layer.masksToBounds = YES;
    btn.titleLabel.font = [UIFont systemFontOfSize:20.0f];
    [btn setTitle:@"开始" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setBackgroundImage:[self imageWithColor:[UIColor colorWithHexString:@"128ee1"]] forState:UIControlStateHighlighted];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick:(UIButton *)sender {
    
}

- (void)zanClick:(UIButton *)sender {
}

- (UIImage *)imageWithColor:(UIColor *)color {
    NSParameterAssert(color != nil);
    CGRect rect = CGRectMake(0, 0, 1, 1);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [color setFill];
    UIRectFill(rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
