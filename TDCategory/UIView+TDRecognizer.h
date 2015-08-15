//
//  UIView+TDGestureRecognizer.h
//  TDRecognizer
//
//  Created by thuydd on 3/27/15.
//  Copyright (c) 2015 TB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TDRecognizer)

- (void)td_addSiglePan:(SEL)selector;
- (void)td_addDoublePan:(SEL)selector;
- (void)td_addTriplePan:(SEL)selector;
- (void)td_addHoldPress:(SEL)selector duration:(NSInteger)dur;
- (void)td_doublePress:(SEL)selector;
- (void)td_triplePress:(SEL)selector;
- (void)td_numberPress:(NSInteger)num SEL:(SEL)selector;

@end
