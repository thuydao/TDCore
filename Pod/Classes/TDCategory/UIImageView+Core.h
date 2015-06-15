//
//  UIImageView+Core.h
// Core
//
//  Created by Dao Duy Thuy on 7/9/14.
//  ". All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (Core)

#pragma mark -
- (void)setImageWithImageName:(NSString *)imageName;

#pragma mark - Add button - Center
- (void)addButtonAtCenterWithTarget:(id )target withAction:(SEL )action;
- (void)addButtonAtCenterWithTarget:(id )target withAction:(SEL )action withSize:(CGSize )size;

#pragma mark - Add button - Other
#pragma mark + Left
- (void)addButtonAtLeftTopWithTarget:(id )target withAction:(SEL )action;
- (void)addButtonAtLeftTopWithTarget:(id )target withAction:(SEL )action withSize:(CGSize )size;

#pragma mark + Top
- (void)addButtonAtTopRightWithTarget:(id )target withAction:(SEL )action;
- (void)addButtonAtTopRightWithTarget:(id )target withAction:(SEL )action withSize:(CGSize )size;

#pragma mark + Right
- (void)addButtonAtRightBottomWithTarget:(id )target withAction:(SEL )action;
- (void)addButtonAtRightBottomWithTarget:(id )target withAction:(SEL )action withSize:(CGSize )size;

#pragma mark + Botton
- (void)addButtonAtBottonLeftWithTarget:(id )target withAction:(SEL )action;
- (void)addButtonAtBottonLeftWithTarget:(id )target withAction:(SEL )action withSize:(CGSize )size;

@end
