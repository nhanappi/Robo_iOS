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

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    NSLog(@"viewDidLoad");
    NSLog(@"add for test");
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    CGRect bounds = [[UIScreen mainScreen] bounds];
    NSLog(@"aaaa: %f, %f, %f, %f",bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height);
    XLCycleScrollView *csView = [[XLCycleScrollView alloc] initWithFrame:bounds];
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
    NSLog(@"numberOfPages");
    return 5;
}

- (UIView *)pageAtIndex:(NSInteger)index
{    
    UILabel *l = [[UILabel alloc] initWithFrame:self.view.bounds];
    
    UILabel* contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 0, 250, l.bounds.size.height)];
    contentLabel.numberOfLines  = 0;
    contentLabel.font = [UIFont systemFontOfSize:12];
    contentLabel.textAlignment = NSTextAlignmentLeft;
    contentLabel.backgroundColor = [UIColor clearColor];
    contentLabel.text = FISRT_SCEEN_TEXT;
    
   	[l addSubview:contentLabel];
    
    return l;
}


@end
