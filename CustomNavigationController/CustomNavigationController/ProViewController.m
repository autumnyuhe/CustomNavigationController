//
//  ProViewController.m
//  CustomNavigationController
//
//  Created by 马万前 on 16/3/7.
//  Copyright © 2016年 Pradeep Kumar Yadav. All rights reserved.
//

#import "ProViewController.h"

@interface ProViewController ()

@end

@implementation ProViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationNone];
    [[UIApplication sharedApplication] setStatusBarOrientation:UIInterfaceOrientationPortrait];
    if([[[UIDevice currentDevice] systemVersion] floatValue])
    {
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIInterfaceOrientationPortrait] forKey:@"orientation"];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    
    //自己可以调整，达到想要的效果，比如只能横屏显示，只能竖屏显示，或者直接返回YES,表示可以支持任何方向的旋转.
    
    return(interfaceOrientation==UIInterfaceOrientationPortrait);//竖屏显示
    
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
