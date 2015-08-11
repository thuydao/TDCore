//
//  TBBaseObject.m
//  mPos
//
//  Created by thuydd on 1/30/15.
//  Copyright (c) 2015 SmartOSCVietNam. All rights reserved.
//

#import "TDBaseObject.h"

static TDBaseObject *sharedInstance = nil;
@implementation TDBaseObject

#pragma mark - private

/**
 *  init
 *
 *  @return instancetype
 */
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self td_initialize];
    }
    return(self);
}


/**
 *  initialize
 *  Overwrite to customize init object
 */
- (void)td_initialize
{
    NSLog(@"%s",__FUNCTION__);
}

#pragma mark - singleton

/**
 *  sharedInstance
 *
 *  @return v
 */
+ (instancetype)td_sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[[self class] alloc] init];
    });
    return sharedInstance;
}

@end
