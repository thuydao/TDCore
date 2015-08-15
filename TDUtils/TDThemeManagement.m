//
//  TDThemeManagement.m
//  TDCore
//
//  Created by Dao Duy Thuy on 8/12/15.
//  Copyright (c) 2015 Thuỷ Đào. All rights reserved.
//

#import "TDThemeManagement.h"

@implementation TDThemeManagement

- (void)setCurrentThemeKey:(NSString *)currentThemeKey
{
     NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    if (![[self currentThemeKey] isEqualToString:@"currentThemeKey"])
    {
        [self td_respondsToSelector:@selector(td_configureTheme)];
        [ud setObject:currentThemeKey forKey:@"td_currentThemekey"];
    }
    else
    {
        NSLog(@"dont change theme");
    }
}


- (NSString *)currentThemeKey
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    if (![ud stringForKey:@"td_currentThemekey"])
    {
        //return default current theme
        return @"";
    }
    else
        return [ud stringForKey:@"td_currentThemekey"];
}


@end
