//
//  PAimViewController.h
//  SHKRouterAndComponentDemo
//
//  Created by 申鸿凯 on 2019/12/12.
//  Copyright © 2019 shenhk. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PAimViewController : UIViewController
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) void(^callBack)(void);

@end

NS_ASSUME_NONNULL_END
