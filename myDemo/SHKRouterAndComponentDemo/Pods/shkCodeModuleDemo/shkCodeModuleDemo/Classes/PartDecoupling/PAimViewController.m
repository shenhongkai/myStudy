//
//  PAimViewController.m
//  SHKRouterAndComponentDemo
//
//  Created by 申鸿凯 on 2019/12/12.
//  Copyright © 2019 shenhk. All rights reserved.
//

#import "PAimViewController.h"
#import "WgCycleView.h"

@interface PAimViewController ()
@property (nonatomic,strong) NSArray<NSString *> *imageUrls;
@end

@implementation PAimViewController

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

    self.imageUrls = @[@"04.jpg",@"05.jpg",@"06.jpg"];
}

-(void)setupUI{

    WgCycleView *cycleView = [[WgCycleView alloc] init];

    cycleView.frame = CGRectMake(20, 200, self.view.frame.size.width-40, 200);
    cycleView.backgroundColor = [UIColor redColor];

    cycleView.imageUrls = _imageUrls;

    [self.view addSubview:cycleView];

}


@end
