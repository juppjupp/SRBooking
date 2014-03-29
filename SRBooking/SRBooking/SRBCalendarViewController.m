//
//  SRBCalendarViewController.m
//  SRBooking
//
//  Created by Jonas Ericsson on 27/03/14.
//  Copyright (c) 2014 joersolution.se. All rights reserved.
//

#import "SRBCalendarViewController.h"
#import "SRBLanguage.h"
#import "SRBCalendarButton.h"

@interface SRBCalendarViewController ()

@property (nonatomic, strong) SRBCalendarButton *button1;
@property (nonatomic, strong) SRBCalendarButton *button2;
@property (nonatomic, strong) SRBCalendarButton *button3;
@property (nonatomic, strong) SRBCalendarButton *button4;
@property (nonatomic, strong) SRBCalendarButton *button5;
@property (nonatomic, strong) SRBCalendarButton *button6;
@property (nonatomic, strong) SRBCalendarButton *button7;
@end

@implementation SRBCalendarViewController

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
    // Do any additional setup after loading the view.
    
}

- (void)viewDidAppear:(BOOL)animated{
    self.navigationItem.title = NSLocalizedStringFromTable(@"SRBCalendar", [[SRBLanguage sharedInstance] getSelectedLanguage], @"");

    [self initCalendar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)initCalendar{
    self.button1 = [[SRBCalendarButton alloc] initWithFrame:CGRectMake(10, 64, 40, 40) target:self action:@selector(calendarButton_clicked)];
    [self.view addSubview:self.button1];
}

- (void)calendarButton_clicked{
    [SRBLanguage sharedInstance].selectedLanguage = @"en";
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
