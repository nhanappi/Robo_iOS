//
//  MainViewController.m
//  robo
//
//  Created by Nhan Mai on 9/10/13.
//  Copyright (c) 2013 Appiphany. All rights reserved.
//

#import "MainViewController.h"
#import "XLCycleScrollView.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    XLCycleScrollView *csView = [[XLCycleScrollView alloc] initWithFrame:self.view.bounds];
    csView.delegate = self;
    csView.datasource = self;
    [self.view addSubview:csView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfPages
{
    return 5;
}

- (UIView *)pageAtIndex:(NSInteger)index
{
    UILabel *l = [[UILabel alloc] initWithFrame:self.view.bounds];
    l.text = [NSString stringWithFormat:@"%d",index];
    l.font = [UIFont systemFontOfSize:72];
    l.textAlignment = NSTextAlignmentCenter;
    l.backgroundColor = [UIColor clearColor];
    return l;
}


@end
