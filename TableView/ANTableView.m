//
//  ANTableView.m
//
//  Created by Oksana Kovalchuk on 4/11/14.
//  Copyright (c) 2014 ANODA. All rights reserved.
//

#import "ANTableView.h"
#import "ANDefines.h"
#import "UIColor+ANAdditions.h"

static CGFloat const kDefaultTableViewCellHeight = 44;
static CGFloat const kDefaultTableViewHeaderHeight = 40;

@implementation ANTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self)
    {
        self.delaysContentTouches = NO;
        if (IOS7_OR_HIGHER)
        {
            self.keyboardDismissMode = UIScrollViewKeyboardDismissModeInteractive;
        }
        [self setupAppearance];
    }
    return self;
}

- (void)setupAppearance
{
    self.rowHeight = kDefaultTableViewCellHeight;
    self.sectionHeaderHeight = kDefaultTableViewHeaderHeight;
    
    self.backgroundColor = [UIColor clearColor];
    self.backgroundView = nil;
    self.separatorColor = [UIColor an_colorWithHexString:@"D7D6DA"];
}

- (BOOL)touchesShouldCancelInContentView:(UIView *)view
{
    // Because we set delaysContentTouches = NO, we return YES for UIButtons
    // so that scrolling works correctly when the scroll gesture
    // starts in the UIButtons.
    if ([view isKindOfClass:[UIButton class]])
    {
        return YES;
    }
    
    return [super touchesShouldCancelInContentView:view];
}

@end
