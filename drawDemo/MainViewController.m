//
//  MainViewController.m
//  I💕U
//
//  Created by my on 2016/11/15.
//  Copyright © 2016年 my. All rights reserved.
//

#import "MainViewController.h"
#import "DrawRound.h"

@interface MainViewController ()
{
    DrawRound *roundView;

}
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    roundView = [[DrawRound alloc] initWithFrame:CGRectMake(0, 0, 100,100)];
    roundView.center = self.view.center;
    [self.view addSubview:roundView];

}

@end
