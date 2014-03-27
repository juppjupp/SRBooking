//
//  AppDelegate.h
//  SRBooking
//
//  Created by Jonas Ericsson on 25/03/14.
//  Copyright (c) 2014 joersolution.se. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SRBCalendarViewController.h"
#import "SRBContactsViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (nonatomic, strong) SRBCalendarViewController *calendarViewCtrl;
@property (nonatomic, strong) SRBContactsViewController *contactViewCtrl;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
