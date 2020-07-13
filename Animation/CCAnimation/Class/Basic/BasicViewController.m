//
//  BasicViewController.m
//  CCAnimation
//
//  Created by ZhangCc on 2018/5/30.
//  Copyright © 2018年 ZhangCc. All rights reserved.
//

#import "BasicViewController.h"

@interface BasicViewController ()

@property (nonatomic, assign) BasicType type;

@end

@implementation BasicViewController

- (instancetype)initWithType:(BasicType)type {
    if (self = [super init]) {
        self.type = type;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *array = @[@"位移",@"透明度",@"缩放",@"旋转",@"背景色"];
    self.navigationItem.title = array[self.type];
}

- (void)btnClick:(UIButton *)sender {
    switch (self.type) {
        case BasicTypePosition:
            [self positionAnimation];
            break;
        case BasicTypeOpacity:
            [self opacityAnimation];
            break;
        case BasicTypeScale:
            [self scaleAnimation];
            break;
        case BasicTypeRotate:
            [self rotateAnimation];
            break;
        case BasicTypeBackground:
            [self backgroundAnimation];
            break;
        default:
            break;
    }
}

//位移
- (void)positionAnimation {
  
    //位移
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:POSITION];
    animation.fromValue = [NSValue valueWithCGPoint:CGPointMake(50, SCREEN_HEIGHT/2 - 75)];
    animation.toValue = [NSValue valueWithCGPoint:CGPointMake(SCREEN_WIDTH - 50, SCREEN_HEIGHT/2 - 75)];
    animation.beginTime = CACurrentMediaTime()+2;
    animation.duration = 3.0f;
    //animation.autoreverses = YES;
    animation.removedOnCompletion = NO;//设置为No是为了使fillMode发挥作用
    animation.fillMode = kCAFillModeForwards;//当动画结束后,layer会一直保持着动画最后的状态
    [self.bgView.layer addAnimation:animation forKey:@"positionAnimation"];
    
    
    //圆角
    CABasicAnimation *anim2 = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    anim2.duration = 1.f;
    anim2.fromValue = [NSNumber numberWithFloat:0.f];
    anim2.toValue = [NSNumber numberWithFloat:20.f];
    anim2.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
   // anim2.repeatCount = CGFLOAT_MAX;
    anim2.autoreverses = YES;
    anim2.removedOnCompletion = NO;//设置为No是为了使fillMode发挥作用
    anim2.fillMode = kCAFillModeForwards;//当动画结束后,layer会一直保持着动画最后的状态
    [self.bgView.layer addAnimation:anim2 forKey:@"cornerRadius"];
    
    //阴影效果
    /*
    [self.bgView.layer setShadowOffset:CGSizeMake(2,2)];
    [self.bgView.layer setShadowOpacity:1];
    [self.bgView.layer setShadowColor:[UIColor grayColor].CGColor];
    
    CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"shadowColor"];
    anim.duration = 1.f;
    anim.toValue = (id)[UIColor redColor].CGColor;
    anim.fromValue =  (id)[UIColor blackColor].CGColor;

    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.repeatCount = CGFLOAT_MAX;
    anim.autoreverses = YES;

    [self.bgView.layer addAnimation:anim forKey:nil];

    CABasicAnimation *_anim = [CABasicAnimation animationWithKeyPath:@"shadowOffset"];
    _anim.duration = 1.f;
    _anim.fromValue = [NSValue valueWithCGSize:CGSizeMake(0,0)];
    _anim.toValue = [NSValue valueWithCGSize:CGSizeMake(10,10)];

    _anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
   // _anim.repeatCount = CGFLOAT_MAX;
    _anim.autoreverses = YES;

    [self.bgView.layer addAnimation:_anim forKey:nil];


    CABasicAnimation *_anim1 = [CABasicAnimation animationWithKeyPath:@"shadowOpacity"];
    _anim1.duration = 1.f;
    _anim1.fromValue = [NSNumber numberWithFloat:0.5];
    _anim1.toValue = [NSNumber numberWithFloat:1];

    _anim1.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    _anim1.repeatCount = CGFLOAT_MAX;
    _anim1.autoreverses = YES;

    [self.bgView.layer addAnimation:_anim1 forKey:nil];
    

    //阴影的宽度范围
    CABasicAnimation *_anim2 = [CABasicAnimation animationWithKeyPath:@"shadowRadius"];
    _anim2.duration = 1.f;
    _anim2.fromValue = [NSNumber numberWithFloat:10];
    _anim2.toValue = [NSNumber numberWithFloat:5];

    _anim2.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    _anim2.repeatCount = CGFLOAT_MAX;
    _anim2.autoreverses = YES;

    [self.bgView.layer addAnimation:_anim2 forKey:nil];
     */
    
    //贝塞尔曲线画阴影效果
    /*
    self.bgView.layer.shadowColor = [UIColor yellowColor].CGColor;//shadowColor阴影颜色
    self.bgView.layer.shadowOffset = CGSizeMake(0,0);//shadowOffset阴影偏移，默认(0, -3),这个跟shadowRadius配合使用
    self.bgView.layer.shadowOpacity = 1;//阴影透明度，默认0
   self.bgView.layer.shadowRadius = 3;//阴影半径，默认3
    //路径阴影
    UIBezierPath *path = [UIBezierPath bezierPath];
    float width = self.bgView.bounds.size.width;
    float height = self.bgView.bounds.size.height;
    float x = self.bgView.bounds.origin.x;
    float y = self.bgView.bounds.origin.y;
    float addWH = 10;
    CGPoint topLeft      = self.bgView.bounds.origin;
    CGPoint topMiddle = CGPointMake(x+(width/2),y-addWH);
    CGPoint topRight     = CGPointMake(x+width,y);
    CGPoint rightMiddle = CGPointMake(x+width+addWH,y+(height/2));
    CGPoint bottomRight  = CGPointMake(x+width,y+height);
    CGPoint bottomMiddle = CGPointMake(x+(width/2),y+height+addWH);
    CGPoint bottomLeft   = CGPointMake(x,y+height);
    
    CGPoint leftMiddle = CGPointMake(x-addWH,y+(height/2));
    [path moveToPoint:topLeft];
    //添加四个二元曲线
    [path addQuadCurveToPoint:topRight  controlPoint:topMiddle];
    [path addQuadCurveToPoint:bottomRight  controlPoint:rightMiddle];
    [path addQuadCurveToPoint:bottomLeft   controlPoint:bottomMiddle];
    [path addQuadCurveToPoint:topLeft   controlPoint:leftMiddle];
    //设置阴影路径
   self.bgView.layer.shadowPath = path.CGPath;
    
    */
    
}

//透明度
- (void)opacityAnimation {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:OPACITY];
    animation.fromValue = @(1.0);
    animation.toValue = @(0.3);
    animation.duration = 1.0f;
    [self.bgView.layer addAnimation:animation forKey:@"opacityAnimation"];
}

//缩放
- (void)scaleAnimation {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:TRANSFORM_SCALE];
    animation.fromValue = @(1.0);
    animation.byValue = @(2.0);
    animation.toValue = @(1.5);
    animation.duration = 3.0f;
    [self.bgView.layer addAnimation:animation forKey:@"scaleAnimation"];
}

//旋转
- (void)rotateAnimation {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:TRANSFORM_ROTATION_Z];
    animation.toValue = @(M_PI * 2);
    animation.duration = 1.0f;
    [self.bgView.layer addAnimation:animation forKey:@"rotateAnimation"];
}

//背景色
- (void)backgroundAnimation {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:BACKGROUNDCOLOR];
    animation.toValue = (id)[UIColor yellowColor].CGColor;
    animation.duration = 2.0f;
    [self.bgView.layer addAnimation:animation forKey:@"backgroundAnimation"];
}


@end
