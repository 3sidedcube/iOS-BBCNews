//
//  TSCNewsStory.h
//  BBC News
//
//  Created by Simon Mitchell on 10/03/2015.
//  Copyright (c) 2015 3 SIDED CUBE DESIGN Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TSCNewsStory : NSObject

@property (nonatomic, copy) NSString *headline;
@property (nonatomic, copy) NSString *body;
@property (nonatomic, strong) UIImage *image;

@end
