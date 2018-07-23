//
//  RootViewController.m
//  ETM
//
//  Created by aa on 2018/7/23.
//  Copyright © 2018年 aa. All rights reserved.
//

#import "RootViewController.h"
#import "ExtraButton.h"
#import "AppDelegate.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ExtraButton *myBtn = [ExtraButton buttonWithType:UIButtonTypeCustom];
    myBtn.frame = CGRectMake(0, 20, 50, 50);
    myBtn.extraX = 30;
    myBtn.extraY = 30;
    myBtn.backgroundColor = [UIColor redColor];
    [myBtn addTarget:self action:@selector(openDrawer) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myBtn];
    
}

-(void)openDrawer
{
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [appDelegate.sideMenu showMenuAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
