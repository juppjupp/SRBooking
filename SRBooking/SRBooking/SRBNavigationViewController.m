//
//  SRBNavigationViewController.m
//  SRBooking
//
//  Created by Jonas Ericsson on 27/03/14.
//  Copyright (c) 2014 joersolution.se. All rights reserved.
//

#import "SRBNavigationViewController.h"

@interface SRBNavigationViewController ()

@end

@implementation SRBNavigationViewController

- (id)initWithRootViewController:(UIViewController *)rootViewController
{
    self = [super initWithRootViewController:rootViewController];
    if(self) {
        self.navigationBar.translucent = NO;
        
        self.navigationBar.barTintColor = [UIColor blueColor];
        self.navigationBar.tintColor = [UIColor whiteColor];
        
        NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                    [UIColor whiteColor],
                                    UITextAttributeTextColor,
                                    [UIColor clearColor],
                                    UITextAttributeTextShadowColor, nil
                                    ];
        
        [[UIBarButtonItem appearance] setTitleTextAttributes: attributes forState:UIControlStateNormal];
        NSDictionary *titleTextAttributes = @{UITextAttributeTextColor:[UIColor whiteColor]};
        [[UINavigationBar appearance] setTitleTextAttributes:titleTextAttributes];
        
        //self.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:UITextAttributeTextColor];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
