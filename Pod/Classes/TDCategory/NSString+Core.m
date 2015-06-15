//
//  NSString+Core.m
//  test
//
//  Created by Dao Duy Thuy on 4/14/14.
//  Copyright ThuyDao 2014. All rights reserved.
//  Provider : Dao Duy Thuy
//

#import "NSString+Core.h"

@implementation NSString (Core)

#pragma mark - Check
- (BOOL)isEmpty
{    
    return [[self stringByTrimmingWhitespace] isEqualToString:@""];
}

#pragma mark - Initialization
+ (NSString *)stringFromInteger:(NSInteger)anInteger
{
    return [NSString stringWithFormat:@"%ld", (long)anInteger];
}

+ (NSString *)stringFromFloat:(float)aFloat
{
    return [NSNumber numberWithFloat:aFloat].stringValue;
}

+ (NSString*)stringFromDouble:(double)aDouble
{
    return [NSNumber numberWithDouble:aDouble].stringValue;
}

+ (NSString *)stringWithUUID
{
    NSString* uuidString = nil;
    CFUUIDRef newUUID = CFUUIDCreate(kCFAllocatorDefault);
    
    if (newUUID)
    {
        uuidString = (__bridge NSString *)CFUUIDCreateString(kCFAllocatorDefault, newUUID);
        CFRelease(newUUID);
    }
    
    return uuidString;
}

#pragma mark - Removing & Trimming
- (NSString *)stringByRemovingCharactersInSet:(NSCharacterSet*)characterSet
{
    NSScanner *cleanerScanner = [NSScanner scannerWithString:self];
    NSMutableString *cleanString = [NSMutableString stringWithCapacity:[self length]];
    
    // Make sure we don't skip whitespace, which NSScanner does by default
    [cleanerScanner setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@""]];
    
    while (![cleanerScanner isAtEnd])
    {
        NSString* stringFragment;
        
        if ([cleanerScanner scanUpToCharactersFromSet:characterSet intoString:&stringFragment])
            [cleanString appendString:stringFragment];
        
        [cleanerScanner scanCharactersFromSet:characterSet intoString:nil];
    }
    
    return cleanString;
}

- (NSString *)stringByReplacingCharactersInSet:(NSCharacterSet*)characterSet
                                    withString:(NSString*)string
{
    NSScanner *cleanerScanner = [NSScanner scannerWithString:self];
    NSMutableString *cleanString    = [NSMutableString stringWithCapacity:[self length]];
    
    // Make sure we don't skip whitespace, which NSScanner does by default
    [cleanerScanner setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@""]];
    
    while (![cleanerScanner isAtEnd])
    {
        NSString* stringFragment;
        
        if ([cleanerScanner scanUpToCharactersFromSet:characterSet intoString:&stringFragment])
            [cleanString appendString:stringFragment];
        
        if ([cleanerScanner scanCharactersFromSet:characterSet intoString:nil])
            [cleanString appendString:string];
    }
    
    return cleanString;
}

- (NSString *)stringByTrimmingWhitespace
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

-(NSString *)stringByRemovingAmpEscapes
{
    NSMutableString* dirtyStringMutant = [NSMutableString stringWithString:self];
    [dirtyStringMutant replaceOccurrencesOfString:@"&amp;"
                                       withString:@"&"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    [dirtyStringMutant replaceOccurrencesOfString:@"&quot;"
                                       withString:@"\""
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    [dirtyStringMutant replaceOccurrencesOfString:@"&lt;"
                                       withString:@"<"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    [dirtyStringMutant replaceOccurrencesOfString:@"&gt;"
                                       withString:@">"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    [dirtyStringMutant replaceOccurrencesOfString:@"&mdash;"
                                       withString:@"-"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    [dirtyStringMutant replaceOccurrencesOfString:@"&apos;"
                                       withString:@"'"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    // fix import from old Firefox versions, which exported &#39; instead of a plain apostrophe
    [dirtyStringMutant replaceOccurrencesOfString:@"&#39;"
                                       withString:@"'"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    return [dirtyStringMutant stringByRemovingCharactersInSet:[NSCharacterSet controlCharacterSet]];
}

-(NSString *)stringByAddingAmpEscapes
{
    NSMutableString* dirtyStringMutant = [NSMutableString stringWithString:self];
    [dirtyStringMutant replaceOccurrencesOfString:@"&"
                                       withString:@"&amp;"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    [dirtyStringMutant replaceOccurrencesOfString:@"\""
                                       withString:@"&quot;"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    [dirtyStringMutant replaceOccurrencesOfString:@"<"
                                       withString:@"&lt;"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    [dirtyStringMutant replaceOccurrencesOfString:@">"
                                       withString:@"&gt;"
                                          options:NSLiteralSearch
                                            range:NSMakeRange(0,[dirtyStringMutant length])];
    return [NSString stringWithString:dirtyStringMutant];
}

#pragma mark - Query
- (BOOL)containsString:(NSString *)s
{
	NSRange range = [self rangeOfString:s];

	return range.location != NSNotFound;
}

- (BOOL)containsCaseInsensitiveString:(NSString *)s
{
	NSRange range = [self rangeOfString:s options:NSCaseInsensitiveSearch];

	return range.location != NSNotFound;
}

- (BOOL)caseInsensitiveHasPrefix:(NSString *)s
{
	return [[self lowercaseString] hasPrefix:[s lowercaseString]];
}

- (BOOL)caseInsensitiveHasSuffix:(NSString *)s
{
	return [[self lowercaseString] hasSuffix:[s lowercaseString]];
}

- (BOOL)isCaseInsensitiveEqual:(NSString *)s
{
	return [self compare:s options:NSCaseInsensitiveSearch] == NSOrderedSame;
}

- (BOOL)isEqualToStringInsensitive:(NSString *)strNeedEqual
{
    return [[self lowercaseString] isEqualToString:[strNeedEqual lowercaseString]];
}

#pragma mark - Validate
- (BOOL)isValidEmail:(NSString *)email
{
    return NO;
}

- (BOOL)isValidPassword:(NSString *)password
{
    return NO;
}

- (BOOL)isValidTelephone:(NSString *)telephone
{
    return NO;
}

#pragma mark - File Path
- (NSString *)filePathForReadWithFileName:(NSString *)fileName
{
    return [self filePathWithFileName:fileName withType:0];
}

- (NSString *)filePathForWrittenWithFileName:(NSString *)fileName
{
    return [self filePathWithFileName:fileName withType:1];
}

- (NSString *)filePathWithFileName:(NSString *)fileName withType:(NSInteger )type
{
    NSArray *arrSearchPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentPath = [arrSearchPath objectAtIndex:0];
    
	NSString *plistPath = [documentPath stringByAppendingPathComponent:fileName];
    
    if ( ![[NSFileManager defaultManager] fileExistsAtPath:plistPath] && type == 0 )
    {
        plistPath = [[NSBundle mainBundle] pathForResource:[[fileName componentsSeparatedByString:@"."] objectAtIndex:0]
                                                    ofType:[[fileName componentsSeparatedByString:@"."] objectAtIndex:1]];
    }
    
    return plistPath;
}

#pragma mark - URL
- (NSString *)stringByUrlEncoded
{
    CFStringRef urlString = CFURLCreateStringByAddingPercentEscapes(NULL,
                                                                    (CFStringRef)self,
                                                                    NULL,
                                                                    (CFStringRef)@"!*'\"();:@&=+$,/?%#[]% ",
                                                                    kCFStringEncodingUTF8);
    return (__bridge NSString *)urlString;
}

#pragma mark - 
- (CGFloat)widthLabelForMaximumHeight:(CGFloat )maximumHeight withFont:(UIFont *)font
{
    CGSize maximumLabelSize = CGSizeMake(FLT_MAX, maximumHeight);
    CGSize expectedLabelSize = [self boundingRectWithSize:maximumLabelSize
                                                  options:NSStringDrawingUsesLineFragmentOrigin
                                               attributes:@{NSFontAttributeName:font}
                                                  context:nil].size;

    //[self bou sizeWithFont:font constrainedToSize:maximumLabelSize];
    
    return expectedLabelSize.width;
}

- (CGFloat)heightLabelForMaximumWidth:(CGFloat )maximumWidth withFont:(UIFont *)font
{
    CGSize maximumLabelSize = CGSizeMake(maximumWidth, FLT_MAX);
    
    CGSize expectedLabelSize = [self boundingRectWithSize:maximumLabelSize
                                                  options:NSStringDrawingUsesLineFragmentOrigin
                                               attributes:@{NSFontAttributeName:font}
                                                  context:nil].size;
//    [self sizeWithFont:font constrainedToSize:maximumLabelSize];
    
    return expectedLabelSize.width;
}

@end
