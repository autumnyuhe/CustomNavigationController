//
//  LandscapeView.m
//  CustomNavigationController
//
//  Created by 马万前 on 16/3/7.
//  Copyright © 2016年 Pradeep Kumar Yadav. All rights reserved.
//

#import "LandscapeView.h"
#import "ProViewController.h"

@interface LandscapeView ()

@end

@implementation LandscapeView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBarHidden = NO;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self setNeedsStatusBarAppearanceUpdate];
    if([[UIDevice currentDevice] orientation]==UIDeviceOrientationPortrait){
        //强制横屏
        [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
        [[UIApplication sharedApplication] setStatusBarOrientation:UIInterfaceOrientationLandscapeLeft];
        if([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
        {
            [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationLandscapeRight] forKey:@"orientation"];
        }
        //iOS9 填坑方案
        if([[[UIDevice currentDevice] systemVersion] floatValue] >= 9.0){
            //            if ([self.mytext isFirstResponder]) {
            //                [self.mytext resignFirstResponder];
            //            }
            //            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            //                NSLog(@"进来啦");
            //                [self.mytext becomeFirstResponder];
            //            });
        }
    }else{
        //强制竖屏
        [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationNone];
        [[UIApplication sharedApplication] setStatusBarOrientation:UIInterfaceOrientationPortrait];
        if([[[UIDevice currentDevice] systemVersion] floatValue])
        {
            [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIInterfaceOrientationPortrait] forKey:@"orientation"];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)click:(id)sender{
    ProViewController *con = [[ProViewController alloc] initWithNibName:@"ProViewController" bundle:nil];
    [self.navigationController pushViewController:con animated:YES];
}
-(IBAction)BackClick:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^{
        [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationNone];
        [[UIApplication sharedApplication] setStatusBarOrientation:UIInterfaceOrientationPortrait];
        if([[[UIDevice currentDevice] systemVersion] floatValue])
        {
            [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIInterfaceOrientationPortrait] forKey:@"orientation"];
        }
    }];
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
