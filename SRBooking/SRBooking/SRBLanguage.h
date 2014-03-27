//
//  SRBLanguage.h
//  SRBooking
//
//  Created by Jonas Ericsson on 27/03/14.
//  Copyright (c) 2014 joersolution.se. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SRBLanguage : NSObject

@property (nonatomic, strong) NSString *selectedLanguage;

+ (SRBLanguage *)sharedInstance;

- (NSString*)getSelectedLanguage;

- (NSString*)selectedLanguage;


@end
