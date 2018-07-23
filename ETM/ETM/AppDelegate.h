//
//  AppDelegate.h
//  ETM
//
//  Created by aa on 2018/7/23.
//  Copyright © 2018年 aa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JDSideMenu.h"
@class RootViewController;
@class SideViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) JDSideMenu *sideMenu;
@property (strong, nonatomic) RootViewController *root;
@property (strong, nonatomic) SideViewController *svc;

@end

