//
//  TBBaseObject.h
//  mPos
//
//  Created by thuydd on 1/30/15.
//  Copyright (c) 2015 SmartOSCVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TDBaseObject : NSObject

#pragma mark - private

/**
 *  init
 *
 *  @return instancetype
 */
- (instancetype)init;


/**
 *  initialize
 *  Overwrite to customize init object
 */
- (void)initialize;

#pragma mark - singleton

/**
 *  sharedInstance
 *
 *  @return v
 */
+ (instancetype)sharedInstance;

@end
