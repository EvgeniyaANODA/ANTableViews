//
//  ANTableViewCell.m
//
//  Created by Oksana Kovalchuk on 4/11/14.
//  Copyright (c) 2014 ANODA. All rights reserved.
//

#import "ANTableViewCell.h"
#import "UIColor+ANAdditions.h"

@implementation ANTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        /*
         self.contentView.backgroundColor = [UIColor whiteColor];
         SETTING background color for cell will overlaps table cell separator,
         if you need to set color - do it for cell self.backgroundColor = [UIColor redColor];
         */

        self.selectionColor = [UIColor an_colorWithHexString:kANCellSelectionColor];
    }
    return self;
}

- (void)updateWithModel:(id)model
{
    if ([model isKindOfClass:[NSString class]])
    {
        self.textLabel.text = model;
    }
}

@end
