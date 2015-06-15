//
//  UIColor+HexColor.m
//  UIColorHexColor
//
//  Created by Matt Quiros on 2/8/14.
//  Copyright (c) 2014 Matt Quiros. All rights reserved.
//

#import "UIColor+HexColor.h"

@implementation UIColor (HexColor)

+ (UIColor *)pxColorWithHexValue:(NSString *)hexValue
{
    return [self colorFromHexString:hexValue];

    /*
    // Default
    UIColor *defaultResult = [UIColor blackColor];
    
    // Strip prefixed # hash
    if ([hexValue hasPrefix:@"#"] && [hexValue length] > 1)
    {
        hexValue = [hexValue substringFromIndex:1];
    }
    
    //Determine if 3 or 6 digits
    NSUInteger componentLength = 0;
    if ([hexValue length] == 3)
    {
        componentLength = 1;
    }
    else if ([hexValue length] == 6)
    {
        componentLength = 2;
    }
    else
    {
        return defaultResult;
    }
    
    BOOL isValid = YES;
    CGFloat components[3];
    
    // Seperate the R, G, B values
    for (NSUInteger i = 0; i < 3; i++)
    {
        NSString *component = [hexValue substringWithRange:NSMakeRange(componentLength * i, componentLength)];
        if (componentLength == 1) {
            component = [component stringByAppendingString:component];
        }
        
        NSScanner *scanner = [NSScanner scannerWithString:component];
        unsigned int value;
        isValid &= [scanner scanHexInt:&value];
        components[i] = (CGFloat)value / 255.0f;
    }
    
    if (!isValid) {
        return defaultResult;
    }
    
    return [UIColor colorWithRed:components[0] green:components[1] blue:components[2] alpha:1.0];
     */
}

+ (UIColor *)colorFromHexString:(NSString *)hexString
{
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}

@end
