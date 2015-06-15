//
//  NSString+Core.h
//  test
//
//  Created by Dao Duy Thuy on 4/14/14.
//  Copyright ThuyDao 2014. All rights reserved.
//  Provider : Dao Duy Thuy
//

#import <Foundation/Foundation.h>

@interface NSString (Core)

#pragma mark - Check
- (BOOL)isEmpty;

#pragma mark - Initialization
+ (NSString *)stringFromInteger:(NSInteger)anInteger;
+ (NSString *)stringFromFloat:(float)aFloat;
+ (NSString *)stringFromDouble:(double)aDouble;
+ (NSString *)stringWithUUID;

#pragma mark - Removing & Trimming
- (NSString *)stringByRemovingCharactersInSet:(NSCharacterSet*)characterSet;
- (NSString *)stringByReplacingCharactersInSet:(NSCharacterSet*)characterSet withString:(NSString*)string;
- (NSString *)stringByTrimmingWhitespace;
- (NSString *)stringByRemovingAmpEscapes;
- (NSString *)stringByAddingAmpEscapes;

#pragma mark - Query
- (BOOL)containsString:(NSString *)s;
- (BOOL)containsCaseInsensitiveString:(NSString *)s;
- (BOOL)caseInsensitiveHasPrefix:(NSString *)s;
- (BOOL)caseInsensitiveHasSuffix:(NSString *)s;
- (BOOL)isCaseInsensitiveEqual:(NSString *)s;
- (BOOL)isEqualToStringInsensitive:(NSString *)strNeedEqual;

#pragma mark - Validate
- (BOOL)isValidEmail:(NSString *)email;
- (BOOL)isValidPassword:(NSString *)password;
- (BOOL)isValidTelephone:(NSString *)telephone;

#pragma mark - File Path
- (NSString *)filePathForReadWithFileName:(NSString *)fileName;
- (NSString *)filePathForWrittenWithFileName:(NSString *)fileName;

#pragma mark - URL
- (NSString *)stringByUrlEncoded;

#pragma mark -
- (CGFloat)widthLabelForMaximumHeight:(CGFloat )maximumHeight withFont:(UIFont *)font;
- (CGFloat)heightLabelForMaximumWidth:(CGFloat )maximumWidth withFont:(UIFont *)font;

@end
