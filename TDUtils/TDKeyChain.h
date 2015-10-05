//
//  TDKeyChain.h
//  Pods
//
//  Created by Dao Duy Thuy on 10/5/15.
//
//

#import <Foundation/Foundation.h>

@interface TDKeyChain : NSObject

+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)delete:(NSString *)service;

@end
