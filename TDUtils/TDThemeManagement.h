//
//  TDThemeManagement.h
//  TDCore
//
//  Created by Dao Duy Thuy on 8/12/15.
//  Copyright (c) 2015 Thuỷ Đào. All rights reserved.
//

#import "TDMultiDelegate.h"

@protocol TDThemeManagementProtocol <NSObject>

- (void)td_configureTheme;

@end

@interface TDThemeManagement : TDMultiDelegate

- (void)setCurrentThemeKey:(NSString *)currentThemeKey;
- (NSString *)currentThemeKey;

@end
