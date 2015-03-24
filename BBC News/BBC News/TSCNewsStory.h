//
//  TSCNewsStory.h
//  BBC News
//
//  Created by Simon Mitchell on 10/03/2015.
//  Copyright (c) 2015 3 SIDED CUBE DESIGN Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 A model representation of a news story on the BBC website.
 */
@interface TSCNewsStory : NSObject

/**
 Initialises a new instance of the story object using a dictionary of data returned from the API
 @param dictionary A dictionary of information about the news story
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

/**
 The news story headline
 */
@property (nonatomic, copy) NSString *headline;

/**
 The news story body, the full news story
 */
@property (nonatomic, copy) NSString *body;

/**
 The image that the news story should display
 */
@property (nonatomic, strong) UIImage *image;

/**
 The URL to the remote image for the news story
 */
@property (nonatomic, strong) NSURL *imageURL;

@end
