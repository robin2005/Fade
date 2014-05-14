//
//  UINavigationController+Fade.m
//  www
//
//  Created by robin on 14-5-14.
//  Copyright (c) 2014年 robin. All rights reserved.
//

#import "UINavigationController+Fade.h"

@implementation UINavigationController (Fade)
- (void)pushFadeViewController:(UIViewController *)viewController
{
    CATransition *transition = [CATransition animation];
    transition.duration = 1.5f;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionFade;
	[self.view.layer addAnimation:transition forKey:nil];
    
	[self pushViewController:viewController animated:NO];
}

- (void)fadePopViewController
{
	CATransition *transition = [CATransition animation];
    transition.duration = 1.5f;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionFade;
	[self.view.layer addAnimation:transition forKey:nil];
	[self popViewControllerAnimated:NO];
}
@end
