//
//  ANTableViewController.h
//
//  Created by Oksana Kovalchuk on 29/10/14.
//  Copyright (c) 2014 ANODA. All rights reserved.
//

#import "ANModelTransfer.h"

@interface ANBaseTableViewCell : UITableViewCell <ANModelTransfer>

@property (nonatomic, assign) BOOL isTransparent;
@property (nonatomic, strong) UIColor* selectionColor;

@end
