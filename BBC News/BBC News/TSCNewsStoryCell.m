//
//  TSCNewsStoryCell.m
//  BBC News
//
//  Created by Matthew Cheetham on 03/03/2015.
//  Copyright (c) 2015 3 SIDED CUBE DESIGN Ltd. All rights reserved.
//

#import "TSCNewsStoryCell.h"

@implementation TSCNewsStoryCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.detailTextLabel.numberOfLines = 3;
        
    }
    return self;
}

@end
