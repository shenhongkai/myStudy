//
//  ViewController.m
//  无限轮播
//
//  Created by mac on 16/4/17.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "ViewController.h"
#import "WgCycleView.h"

@interface ViewController ()

@end

@implementation ViewController{

    NSArray<NSString *>*_imageUrls;
}

-(void)getDatas{

    _imageUrls = @[@"01.jpg",@"02.jpg",@"03.jpg"];    
}


- (void)viewDidLoad {
    [super viewDidLoad];

    [self getDatas];

    [self setupUI];

}


-(void)setupUI{

    WgCycleView *cycleView = [[WgCycleView alloc] init];

    cycleView.frame = CGRectMake(20, 200, self.view.frame.size.width-40, 200);
    cycleView.backgroundColor = [UIColor redColor];

    cycleView.imageUrls = _imageUrls;

    [self.view addSubview:cycleView];


}







@end
