//
//  RAimViewController.m
//  SHKRouterAndComponentDemo
//
//  Created by 申鸿凯 on 2019/12/12.
//  Copyright © 2019 shenhk. All rights reserved.
//

#import "RAimViewController.h"
#import "WgCycleView.h"

@interface RAimViewController ()
@property (nonatomic,strong) NSArray<NSString *> *imageUrls;
@end

@implementation RAimViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.navigationItem.title = self.name;
    if (self.callBack) {
        self.callBack();
    }
    
    [self getDatas];
    [self setupUI];
}

-(void)getDatas{

    self.imageUrls = @[@"01.jpg",@"02.jpg",@"03.jpg"];
}

-(void)setupUI{

    WgCycleView *cycleView = [[WgCycleView alloc] init];

    cycleView.frame = CGRectMake(20, 200, self.view.frame.size.width-40, 200);
    cycleView.backgroundColor = [UIColor redColor];

    cycleView.imageUrls = _imageUrls;

    [self.view addSubview:cycleView];


}


@end
