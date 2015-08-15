//
//  UIView+TDGestureRecognizer.m
//  TDRecognizer
//
//  Created by thuydd on 3/27/15.
//  Copyright (c) 2015 TB. All rights reserved.
//

#import "UIView+TDRecognizer.h"

@implementation UIView (TDRecognizer)

- (void)td_addSiglePan:(SEL)selector {
    UIPanGestureRecognizer *singlePan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:selector];
    singlePan.maximumNumberOfTouches = 1;
    
    [self addGestureRecognizer:singlePan];
}

- (void)td_addDoublePan:(SEL)selector {
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:selector];
    pan.maximumNumberOfTouches = 2;
    
    [self addGestureRecognizer:pan];
}

- (void)td_addTriplePan:(SEL)selector {
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:selector];
    pan.maximumNumberOfTouches = 3;
    
    [self addGestureRecognizer:pan];
}

- (void)td_addHoldPress:(SEL)selector duration:(NSInteger)dur {
    UILongPressGestureRecognizer *gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(selector)];
    gesture.minimumPressDuration = dur;
    gesture.allowableMovement = 600;
    [self addGestureRecognizer:gesture];
}

- (void)td_doublePress:(SEL)selector {
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(selector)];
    tapGesture.numberOfTapsRequired = 2;
    [self addGestureRecognizer:tapGesture];
}

- (void)td_triplePress:(SEL)selector {
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(selector)];
    tapGesture.numberOfTapsRequired = 3;
    [self addGestureRecognizer:tapGesture];
}

- (void)td_numberPress:(NSInteger)num SEL:(SEL)selector {
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(selector)];
    tapGesture.numberOfTapsRequired = num;
    [self addGestureRecognizer:tapGesture];
}

@end
