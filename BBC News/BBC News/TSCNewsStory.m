//
//  TSCNewsStory.m
//  BBC News
//
//  Created by Simon Mitchell on 10/03/2015.
//  Copyright (c) 2015 3 SIDED CUBE DESIGN Ltd. All rights reserved.
//

#import "TSCNewsStory.h"

@implementation TSCNewsStory

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        
        self.headline = dictionary[@"headline"];
        self.body = dictionary[@"body"];
        self.imageURL = [NSURL URLWithString:dictionary[@"imageURL"]];
        
    }
    return self;
}

@end
