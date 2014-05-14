//
//  UINavigationController+Fade.h
//  www
//
//  Created by robin on 14-5-14.
//  Copyright (c) 2014年 robin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (Fade)
- (void)pushFadeViewController:(UIViewController *)viewController;
- (void)fadePopViewController;
@end
