//
//  ViewAnimationViewController.m
//  CCAnimation
//
//  Created by 申鸿凯 on 2019/1/24.
//  Copyright © 2019 ZhangCc. All rights reserved.
//

#import "ViewAnimationViewController.h"

@interface ViewAnimationViewController ()
@property (nonatomic, assign) ViewType type;
@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ViewAnimationViewController

- (instancetype)initWithType:(ViewType)type
{
    self = [super init];
    if (self) {
        self.type = type;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *array = @[@"UIView动画1",@"UIView动画2",@"UIView动画3"];
    self.navigationItem.title = array[self.type];
}

- (void)btnClick:(UIButton *)sender {
    switch (self.type) {
        case ViewType1:
            [self ViewTypeAnimation1];
            break;
        case ViewType2:
            [self ViewTypeAnimation2];
            
            break;
        case ViewType3:
            [self ViewTypeAnimation3];
            break;
        default:
            break;
    }
}

- (void)ViewTypeAnimation1
{
    self.bgView.frame = CGRectMake((SCREEN_WIDTH - 100)/2, SCREEN_HEIGHT/2 + 150, 100, 100);
   
    CGPoint point = CGPointMake(100, 40);
    
    [UIView beginAnimations:@"testAnimation" context:nil];
    [UIView setAnimationDuration:3.0];
    [UIView setAnimationDelegate:self];
    //设置动画将开始时代理对象执行的SEL
    [UIView setAnimationWillStartSelector:@selector(animationDoing)];
    
    //设置动画延迟执行的时间
    [UIView setAnimationDelay:0];
    
    [UIView setAnimationRepeatCount:MAXFLOAT];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    //设置动画是否继续执行相反的动画
    [UIView setAnimationRepeatAutoreverses:YES];
    self.bgView.center = point;
    self.bgView.transform = CGAffineTransformMakeScale(1.5, 1.5);
    self.bgView.transform = CGAffineTransformMakeRotation(M_PI);
    
    [UIView commitAnimations];
}

- (void)ViewTypeAnimation2
{
    self.imageView.image = [UIImage imageNamed:@"fu"];
    // 转成动画 (flip)
    [UIView beginAnimations:@"imageViewTranslation" context:nil];
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationDelegate:self];
   // [UIView setAnimationWillStartSelector:@selector(startAnimation)];
   // [UIView setAnimationDidStopSelector:@selector(stopAnimation)];
    [UIView setAnimationRepeatCount:1.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationRepeatAutoreverses:YES];
    [UIView setAnimationRepeatCount:MAXFLOAT];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.imageView cache:YES];
//    if (++count % 2 ==0) {
//        self.imageView.image = [UIImage imageNamed:@"fu"];
//    }else{
//        self.imageView.image = [UIImage imageNamed:@"xi"];
//    }
    [UIView commitAnimations];
}

- (void)ViewTypeAnimation3{
    
    [UIView beginAnimations:@"test" context:nil];
    
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationRepeatCount:MAXFLOAT];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.bgView cache:YES];
    
    [UIView commitAnimations];
}

- (UIImageView *)imageView
{
    if (!_imageView)
    {
        _imageView = [[UIImageView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-150)/2, 200, 150, 150)];
        [self.view addSubview:_imageView];
    }
    return _imageView;
}



- (void)animationDoing
{
    NSLog(@"haha");
}




@end
