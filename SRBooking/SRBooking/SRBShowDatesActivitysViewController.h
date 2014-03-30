//
//  SRBShowDatesActivitysViewController.h
//  SRBooking
//
//  Created by Jonas Ericsson on 29/03/14.
//  Copyright (c) 2014 joersolution.se. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SRBShowDatesActivitysViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSString *date;

@end
