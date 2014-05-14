//
//  LQViewController.m
//  Fade
//
//  Created by robin on 14-5-14.
//  Copyright (c) 2014年 robin. All rights reserved.
//

#import "LQViewController.h"

@interface LQViewController ()

@end

@implementation LQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    int radom =  (random() + 4 ) % 4 + 1;
    UIImageView *imge = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"login_introduce_bg%d-586h_os7@2x.jpg",radom]]];
    [self.view addSubview:imge];
    imge.frame = self.view.frame ;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(addSub) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    btn.frame = self.view.frame ;
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    int conut = [self.navigationController.viewControllers count];
    if (conut > 1 ) {
        UIButton *btLeft = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        btLeft.imageEdgeInsets = UIEdgeInsetsMake(0, -30, 0, 0);
        [btLeft setTitle:@"返回" forState:UIControlStateNormal];
        [btLeft setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [btLeft addTarget:self action:@selector(backUp) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:btLeft];
        self.navigationItem.leftBarButtonItem = leftItem;
    }
}

-(void)backUp
{
    [self.navigationController fadePopViewController];
}

-(void)addSub
{
    LQViewController *contrler =[[LQViewController alloc] init];
    [contrler.view setBackgroundColor:[UIColor blueColor]];
    [self.navigationController pushFadeViewController:contrler];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
