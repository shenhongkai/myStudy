//
//  RMediator.h
//  SHKRouterAndComponentDemo
//
//  Created by 申鸿凯 on 2019/12/12.
//  Copyright © 2019 shenhk. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RMediator : NSObject

+ (instancetype)share;
- (id)performTarget:(NSString *)target action:(NSString *)action params:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
