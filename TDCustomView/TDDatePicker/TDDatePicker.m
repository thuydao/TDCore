//
//  TestModel.m
//  TDCore
//
//  Created by Dao Duy Thuy on 8/11/15.
//  Copyright (c) 2015 Thuỷ Đào. All rights reserved.
//

#import "TDDatePicker.h"

@implementation TDDatePicker

- (void)initTransView
{
    if(!self.transView)
    {
        self.transView = [[UIView alloc] init];
        self.transView.userInteractionEnabled = YES;
        [self.transView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:(id)self action:@selector(clicktoAllSpace)]];
    }

}

- (void)td_setDatePickerMode:(UIDatePickerMode)mode
{
    self.dpkDate.datePickerMode = mode;
    [self.dpkDate addTarget:(id)self action:@selector(changeOneSelf) forControlEvents:UIControlEventValueChanged];
    [self initTransView];
}

- (void)td_configure:(UIView *)superview
{
    [self initTransView];
    self.TDDatePickerDelegate = (id)self;
    [superview addSubview:self.transView];
    [superview addSubview:self];
    self.frame = [self hiddenRect];
    
}

- (void)td_showView
{
    self.transView.frame = CGRectMake(0.0f, 0.0f, self.superview.frame.size.width, self.superview.frame.size.height);
    
    [self showOneSelf];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    self.isShowing = YES;
    self.frame = CGRectMake(0, self.superview.frame.size.height - self.frame.size.height, self.frame.size.width, self.frame.size.height);
    self.transView.alpha = 1.0;
    [UIView commitAnimations];
}

- (void)td_hideView
{
    self.isShowing = NO;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    CGRect rect = self.frame;
    rect.origin.y = self.superview.frame.size.height;
    self.frame = rect;
    self.transView.alpha = 0.0;
    [UIView commitAnimations];
    
    self.transView.frame = CGRectMake(0.0f, self.superview.frame.size.height, self.superview.frame.size.width, self.superview.frame.size.height);
    
}

- (CGRect)hiddenRect
{
    return CGRectMake(0, self.superview.frame.size.height, self.frame.size.width, self.frame.size.height);
}

- (IBAction)btnCancelPress:(UIButton *)sender
{
    [self td_hideView];
    [self cancelOneSelf];
}

- (IBAction)btnDonePress:(UIButton *)sender
{
    [self td_hideView];
    [self doneOneSelf];
}

- (void)clicktoAllSpace
{
    [self td_hideView];
    [self cancelOneSelf];
}

- (void)showOneSelf
{
    if (self.TDDatePickerDelegate && [self.TDDatePickerDelegate respondsToSelector:@selector(td_datePickerShow)]) {
        [self.TDDatePickerDelegate td_datePickerShow];
    }
}

- (void)cancelOneSelf
{
    if (self.TDDatePickerDelegate && [self.TDDatePickerDelegate respondsToSelector:@selector(td_datePickerCancel)]) {
        [self.TDDatePickerDelegate td_datePickerCancel];
    }
}

- (void)doneOneSelf
{
    if (self.TDDatePickerDelegate && [self.TDDatePickerDelegate respondsToSelector:@selector(td_datePickerDone)]) {
        [self.TDDatePickerDelegate td_datePickerDone];
    }
}

- (void)changeOneSelf
{
    if (self.TDDatePickerDelegate && [self.TDDatePickerDelegate respondsToSelector:@selector(td_datePickerChangeValue)]) {
        [self.TDDatePickerDelegate td_datePickerChangeValue];
    }
}

@end
