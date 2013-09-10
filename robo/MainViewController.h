//
//  MainViewController.h
//  robo
//
//  Created by Nhan Mai on 9/10/13.
//  Copyright (c) 2013 Appiphany. All rights reserved.
//

#define FISRT_SCEEN_TEXT @"Scanner is your go to app for scanning your documents.\n\nIt automatically crops and enhances your documents for efficient storage in PDF.\n\nIt keeps original scan and convert your documents to text for easy searching.\n\nYou can set where you want to automatically save - Dropbox or iCloud."

#import <UIKit/UIKit.h>
#import "XLCycleScrollView.h"

@interface MainViewController : UIViewController<XLCycleScrollViewDatasource, XLCycleScrollViewDelegate>

@end
