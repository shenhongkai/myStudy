//
//  MainViewController.m
//  CCAnimation
//
//  Created by ZhangCc on 2018/5/28.
//  Copyright © 2018年 ZhangCc. All rights reserved.
//

#import "MainViewController.h"
#import "ViewAnimationViewController.h"
#import "BasicViewController.h"
#import "KeyViewController.h"
#import "GroupViewController.h"
#import "TransitionViewController.h"
#import "CombinationViewController.h"
#import "TransitionViewController1.h"

@interface MainViewController () <UITableViewDelegate, UITableViewDataSource> {
    UITableView *_tableView;
    NSArray *_dataArray;
    NSArray *_titleArray;
}

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"动画";
    [self buildUI];
    [self loadData];
}

- (void)buildUI {
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, SCREEN_HEIGHT - 64) style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.sectionFooterHeight = 0.001;
    [self.view addSubview:_tableView];
}

- (void)loadData {
    _titleArray = @[@"UIView动画",@"核心动画（基础）",@"关键帧动画",@"转场动画",@"过渡动画效果",@"组动画",@"组合动画"];
    
    NSArray *viewArray = @[@"动画1",@"动画2",@"动画3"];
    NSDictionary *dict0 = @{@"value":viewArray};
    
    NSArray *basicArray = @[@"位移",@"透明度",@"缩放",@"旋转",@"背景色"];
    NSDictionary *dict1 = @{@"value":basicArray};
    
    NSArray *keyArray = @[@"关键帧",@"路径",@"抖动",@"缩放"];
    NSDictionary *dict2 = @{@"value":keyArray};
    
    NSArray *transitionArray1 = @[@"转场动画"];
    NSDictionary *dict3 = @{@"value":transitionArray1};
    
    
    NSArray *transitionArray = @[@"Fade(渐变)",@"MoveIn(侧滑)",@"Push(推开)",@"Reveal(揭开)",@"Cube(立方旋转)",@"Suck(飘窗)",@"OglFile(翻片)",@"Ripple(涟漪)",@"Curl(撕开)",@"UnCurl(贴上)",@"CaOpen(相机镜头开放)",@"CaClose(相机镜头关闭)"];
    NSDictionary *dict4 = @{@"value":transitionArray};
    
    NSArray *groupArray = @[@"同时",@"连续"];
    NSDictionary *dict5 = @{@"value":groupArray};
    
    
    NSArray *combinationArray = @[@"添加",@"钉钉",@"点赞",@"贝塞尔曲线",@"进度条"];
    NSDictionary *dict6 = @{@"value":combinationArray};
    
    _dataArray = @[dict0,dict1, dict2, dict3, dict4, dict5,dict6];
}

#pragma mark - UITableViewDelegate && UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _titleArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSDictionary *dict = _dataArray[section];
    NSArray *array = dict[@"value"];
    return array.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return _titleArray[section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CELLID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELLID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELLID];
    }
    cell.textLabel.text = _dataArray[indexPath.section][@"value"][indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"-----%@", _dataArray[indexPath.section][@"value"][indexPath.row]);
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    if (indexPath.section == 0) {
        ViewAnimationViewController *viewVC = [[ViewAnimationViewController alloc]initWithType:indexPath.row];
        [self.navigationController pushViewController:viewVC animated:YES];
    }
    else if (indexPath.section == 1)
    {
        BasicViewController *basicVC = [[BasicViewController alloc] initWithType:indexPath.row];
        [self.navigationController pushViewController:basicVC animated:YES];
    }else if (indexPath.section == 2) {
        KeyViewController *keyVC = [[KeyViewController alloc] initWithType:indexPath.row];
        [self.navigationController pushViewController:keyVC animated:YES];
    }else if (indexPath.section == 3) {
        TransitionViewController1 *vc = [TransitionViewController1 alloc];
         [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.section == 4) {
        TransitionViewController *transitionVC = [[TransitionViewController alloc] initWithType:indexPath.row];
        [self.navigationController pushViewController:transitionVC animated:YES];
    }else if (indexPath.section == 5) {
        GroupViewController *groupVC = [[GroupViewController alloc] initWithType:indexPath.row];
        [self.navigationController pushViewController:groupVC animated:YES];
    }else if (indexPath.section == 6) {
        CombinationViewController *combinationVC = [[CombinationViewController alloc] initWithType:indexPath.row];
        [self.navigationController pushViewController:combinationVC animated:YES];
    }
}


@end
