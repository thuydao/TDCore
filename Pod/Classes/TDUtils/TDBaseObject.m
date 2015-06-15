//
//  TBBaseObject.m
//  mPos
//
//  Created by thuydd on 1/30/15.
//  Copyright (c) 2015 SmartOSCVietNam. All rights reserved.
//

#import "TDBaseObject.h"

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
        [self initialize];
    }
    return(self);
}


/**
 *  initialize
 *  Overwrite to customize init object
 */
- (void)initialize
{
    
}

#pragma mark - singleton

/**
 *  sharedInstance
 *
 *  @return v
 */
+ (instancetype)sharedInstance
{
    static TDBaseObject *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[TDBaseObject alloc] init];
    });
    return sharedInstance;
}

@end
