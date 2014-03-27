//
//  SRBLanguage.m
//  SRBooking
//
//  Created by Jonas Ericsson on 27/03/14.
//  Copyright (c) 2014 joersolution.se. All rights reserved.
//

#import "SRBLanguage.h"

@implementation SRBLanguage
@synthesize selectedLanguage;

+ (SRBLanguage *)sharedInstance
{
    static SRBLanguage *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [SRBLanguage new];
    });
    
    return shared;
}

- (NSString*)getSelectedLanguage
{
    if (self.selectedLanguage)
    {
        if ([self.selectedLanguage isEqualToString:@"sv"]) {
            return STRINGS_RESOURCE_SWEDISH;
        } else {
            return STRINGS_RESOURCE_ENGLISH;
        }
    }
    else
    {
        return STRINGS_RESOURCE_ENGLISH;
    }
}

- (NSString*)selectedLanguage
{
    if (selectedLanguage) {
        return selectedLanguage;
    } else {
        return @"en";
    }
}
@end
