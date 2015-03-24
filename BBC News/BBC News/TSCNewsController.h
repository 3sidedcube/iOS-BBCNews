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
 @abstract The shared instance of the news controller
 @discussion If a shared instance does not exist, one will be created and retained
 @return A shared instance
 */
+ (TSCNewsController *)sharedController;

@end
