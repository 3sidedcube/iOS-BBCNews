//
//  TSCNewsController.h
//  BBC News
//
//  Created by Matthew Cheetham on 24/03/2015.
//  Copyright (c) 2015 3 SIDED CUBE DESIGN Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 The news controller is responsible for downloading and creating news object items for display to the user
 */
@interface TSCNewsController : NSObject

/**
 A completion block that can be called when news stories are returned
 */
typedef void (^TSCNewsStoriesCompletion)(NSError *error, NSArray *stories);

/**
 @abstract The shared instance of the news controller
 @discussion If a shared instance does not exist, one will be created and retained
 @return A shared instance
 */
+ (TSCNewsController *)sharedController;

/**
 Gets a list of news stories from the API
 @param completion The completion block to call on success or failure of loading stories
 */
- (void)getTopNewsStoriesWithCompletion:(TSCNewsStoriesCompletion)completion;

@end
