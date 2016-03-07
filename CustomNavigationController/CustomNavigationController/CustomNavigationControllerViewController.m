//
//  CustomNavigationControllerViewController.m
//
//
//  Created by 马万前 on 16/3/7.
//  Copyright © 2016年 Pradeep Kumar Yadav. All rights reserved.
//

#import "CustomNavigationControllerViewController.h"

@interface CustomNavigationControllerViewController ()

@end

@implementation CustomNavigationControllerViewController

//- (NSUInteger)supportedInterfaceOrientations
//{
//    return UIInterfaceOrientationMaskLandscape;
//    
//}

- (BOOL)shouldAutorotate NS_AVAILABLE_IOS(6_0) {
    return [self.topViewController shouldAutorotate];
}
-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return [self.topViewController supportedInterfaceOrientations];
}
// Returns interface orientation masks.
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation NS_AVAILABLE_IOS(6_0) {
    return [self.topViewController preferredInterfaceOrientationForPresentation];
}

@end
