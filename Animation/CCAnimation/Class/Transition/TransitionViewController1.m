//
//  TransitionViewController1.m
//  CCAnimation
//
//  Created by 申鸿凯 on 2019/2/22.
//  Copyright © 2019 ZhangCc. All rights reserved.
//

#import "TransitionViewController1.h"

@interface TransitionViewController1 ()
@property (nonatomic, strong) UIImageView *imageV;

@end

@implementation TransitionViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.imageV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT - 64)];
    [self.view addSubview:self.imageV];
    self.imageV.image = [UIImage imageNamed:@"0.jpeg"];
    
    self.imageV.userInteractionEnabled = YES;
    //添加手势
    UISwipeGestureRecognizer *leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipe:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.imageV addGestureRecognizer:leftSwipe];
    
    UISwipeGestureRecognizer *rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipe:)];
    
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [self.imageV addGestureRecognizer:rightSwipe];


}
static int _imageIndex = 0;
- (void)swipe:(UISwipeGestureRecognizer *)swipe {
    
    
    //转场代码与转场动画必须得在同一个方法当中.
    NSString *dir = nil;
    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft) {
        
        _imageIndex++;
        if (_imageIndex > 3) {
            _imageIndex = 0;
        }
        NSString *imageName = [NSString stringWithFormat:@"%d.jpeg",_imageIndex];
        self.imageV.image = [UIImage imageNamed:imageName];
        
        dir = @"fromRight";
    }else if (swipe.direction == UISwipeGestureRecognizerDirectionRight) {
        
        _imageIndex--;
        if (_imageIndex < 0) {
            _imageIndex = 4;
        }
        NSString *imageName = [NSString stringWithFormat:@"%d.jpeg",_imageIndex];
        self.imageV.image = [UIImage imageNamed:imageName];
        
        dir = @"fromLeft";
    }
    //添加动画
    CATransition *anim = [CATransition animation];
    //设置转场类型
    anim.type = @"cube";
    //设置转场的方向
    anim.subtype = dir;
    
    anim.duration = 0.5;
    //动画从哪个点开始
    //    anim.startProgress = 0.2;
    //    anim.endProgress = 0.3;
    
    [self.imageV.layer addAnimation:anim forKey:nil];
    
}

@end
