//
//  TDAutoCoding.h
//
//  Version 2.2.1
//
// THUY DAO Clone from https://github.com/nicklockwood/AutoCoding
//

#import <Foundation/Foundation.h>

@interface NSObject (TDAutoCoding) <NSSecureCoding>

//coding

+ (NSDictionary *)codableProperties;
- (void)setWithCoder:(NSCoder *)aDecoder;

//property access

- (NSDictionary *)codableProperties;
- (NSDictionary *)dictionaryRepresentation;

//loading / saving

+ (instancetype)td_objectWithContentsOfFile:(NSString *)path;
- (BOOL)td_writeToFile:(NSString *)filePath atomically:(BOOL)useAuxiliaryFile;

@end
