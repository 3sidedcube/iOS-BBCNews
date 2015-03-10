//
//  TSCNewsDetailViewController.h
//  BBC News
//
//  Created by Matthew Cheetham on 10/03/2015.
//  Copyright (c) 2015 3 SIDED CUBE DESIGN Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TSCNewsStory;

@interface TSCNewsDetailViewController : UITableViewController

- (id)initWithStory:(TSCNewsStory *)story;

@end
