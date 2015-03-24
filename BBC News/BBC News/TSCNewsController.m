//
//  TSCNewsController.m
//  BBC News
//
//  Created by Matthew Cheetham on 24/03/2015.
//  Copyright (c) 2015 3 SIDED CUBE DESIGN Ltd. All rights reserved.
//

#import "TSCNewsController.h"
@import ThunderRequest;

static TSCNewsController *sharedController = nil;

@implementation TSCNewsController

+ (TSCNewsController *)sharedController
{
    @synchronized(self) {
        
        if (sharedController == nil) {
            sharedController = [[self alloc] init];
        }
    }
    
    return sharedController;
}

@end
