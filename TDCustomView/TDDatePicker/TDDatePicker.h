//
//  TestModel.h
//  TDCore
//
//  Created by Dao Duy Thuy on 8/11/15.
//  Copyright (c) 2015 Thuỷ Đào. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol TDDatePickerDelegate <NSObject>

- (void)td_datePickerChangeValue;
- (void)td_datePickerCancel;
- (void)td_datePickerDone;
- (void)td_datePickerShow;

@end

@interface TDDatePicker : UIView

@property (nonatomic, strong) UIView *transView;
@property (nonatomic, assign) BOOL isShowing;
@property (nonatomic, weak) IBOutlet UINavigationBar *td_NavigationBar;
@property (nonatomic, weak) IBOutlet UIDatePicker *dpkDate;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *btnCancel;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *btnDone;

@property (weak, nonatomic) id<TDDatePickerDelegate> TDDatePickerDelegate;


- (IBAction)btnCancelPress:(UIButton *)sender;
- (IBAction)btnDonePress:(UIButton *)sender;


- (void)td_setDatePickerMode:(UIDatePickerMode)mode;

#pragma mark - public method
- (void)td_showView;
- (void)td_hideView;
- (void)td_configure:(UIView *)superview;

@end
