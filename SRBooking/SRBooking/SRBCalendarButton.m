//
//  SRBCalendarButton.m
//  SRBooking
//
//  Created by Jonas Ericsson on 28/03/14.
//  Copyright (c) 2014 joersolution.se. All rights reserved.
//

#import "SRBCalendarButton.h"

@implementation SRBCalendarButton

- (id)initWithFrame:(CGRect)frame target:(id)target action:(SEL)action
{
    self = [super initWithFrame:frame];
    if (self) {
        UIImage *background = [UIImage imageNamed:@"Month Calendar Date Tile.png"];
        [self setBackgroundImage:background forState:UIControlStateNormal];
        
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];

    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
