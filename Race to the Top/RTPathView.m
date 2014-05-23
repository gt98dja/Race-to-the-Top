//
//  RTPathView.m
//  Race to the Top
//
//  Created by Daniel Jansson on 2014-05-19.
//  Copyright (c) 2014 Daniel Jansson. All rights reserved.
//

#import "RTPathView.h"
#import "RTMountinPath.h"

@implementation RTPathView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setup];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

-(void)setup
{
    self.backgroundColor = [UIColor clearColor];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    for (UIBezierPath *path in [RTMountinPath mountainPathsForRect:self.bounds]) {
        [[UIColor blackColor] setStroke];
        [path stroke];
    }
}


@end
