//
//  CMControllerHelper.m
//  CMRead-iPhone
//
//  Created by 申鸿凯 on 2017/9/8.
//  Copyright © 2017年 CMRead. All rights reserved.
//

#import "CMControllerHelper.h"
#import "UIViewController+UI.h"

@implementation CMControllerHelper

+ (UIViewController *)topViewController
{
    UIViewController *root = [[UIApplication sharedApplication] delegate].window.rootViewController;
    if ([root isKindOfClass:[UINavigationController class]])
    {
        UINavigationController *navRoot = (UINavigationController *)root;
        return navRoot.topViewController;
    }else if ([root isKindOfClass:[UITabBarController class]])
    {
        UITabBarController *tabRoot = (UITabBarController *)root;
        UIViewController *tabSelect = tabRoot.selectedViewController;
        if ([tabSelect isKindOfClass:[UINavigationController class]])
        {
            UINavigationController *tabSelectNav = (UINavigationController *)tabSelect;
            return tabSelectNav.topViewController;
        }
        else
        {
            return tabSelect;
        }
    }
    else
    {
        return root;
    }
    
    return nil;
}

+ (void)popToRootViewController
{
    UIViewController *controller = [CMControllerHelper topViewController];
    if (controller.presentedViewController)
    {
        [controller dismissViewControllerAnimated:YES completion:nil];
    }
    
    [controller.navigationController popToRootViewControllerAnimated:YES];
}

@end
