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

@interface TSCNewsController ()

@property (nonatomic, strong) TSCRequestController *requestController;

@end

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

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.requestController = [[TSCRequestController alloc] initWithBaseAddress:@"https://mattcheetham.co.uk/bbc"];
        
    }
    return self;
}

@end
