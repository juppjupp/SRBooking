//
//  SRBCalendarViewController.m
//  SRBooking
//
//  Created by Jonas Ericsson on 27/03/14.
//  Copyright (c) 2014 joersolution.se. All rights reserved.
//

#import "SRBCalendarViewController.h"
#import "SRBShowDatesActivitysViewController.h"
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
    self.button1 = [[SRBCalendarButton alloc] initWithFrame:CGRectMake(10, 104, 40, 40) target:self action:@selector(calendarButton_clicked)];
    self.button2 = [[SRBCalendarButton alloc] initWithFrame:CGRectMake(50, 104, 40, 40) target:self action:@selector(calendarButton_clicked)];
    self.button3 = [[SRBCalendarButton alloc] initWithFrame:CGRectMake(90, 104, 40, 40) target:self action:@selector(calendarButton_clicked)];
    self.button4 = [[SRBCalendarButton alloc] initWithFrame:CGRectMake(130, 104, 40, 40) target:self action:@selector(calendarButton_clicked)];
    self.button5 = [[SRBCalendarButton alloc] initWithFrame:CGRectMake(170, 104, 40, 40) target:self action:@selector(calendarButton_clicked)];
    self.button6 = [[SRBCalendarButton alloc] initWithFrame:CGRectMake(210, 104, 40, 40) target:self action:@selector(calendarButton_clicked)];
    self.button7 = [[SRBCalendarButton alloc] initWithFrame:CGRectMake(250, 104, 40, 40) target:self action:@selector(calendarButton_clicked)];

    
    [self.view addSubview:self.button1];
    [self.view addSubview:self.button2];
    [self.view addSubview:self.button3];
    [self.view addSubview:self.button4];
    [self.view addSubview:self.button5];
    [self.view addSubview:self.button6];
    [self.view addSubview:self.button7];

}

- (void)calendarButton_clicked{
    SRBShowDatesActivitysViewController *showActivityVC = [SRBShowDatesActivitysViewController new];
    showActivityVC.date = @"2014-04-01";
    [self.navigationController pushViewController:showActivityVC animated:YES];
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
