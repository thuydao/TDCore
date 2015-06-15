//
//  UIImageView+Core.m
// Core
//
//  Created by Dao Duy Thuy on 7/9/14.
//  ". All rights reserved.
//

#import "UIImageView+Core.h"

@implementation UIImageView (Core)

#pragma mark -
- (void)setImageWithImageName:(NSString *)imageName
{
    [self setImage:[UIImage imageNamed:imageName]];
}

- (void)addButtonWithTarget:(id )target action:(SEL )action withX:(CGFloat )x withY:(CGFloat )y withWidth:(CGFloat )width withHeight:(CGFloat )height
{
    CGRect frame = CGRectMake(x, y, width, height);
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:frame];
    [button setBackgroundColor:[UIColor clearColor]];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [self.superview addSubview:button];
}

#pragma mark - Add button - Center
- (void)addButtonAtCenterWithTarget:(id )target withAction:(SEL )action
{
    [self addButtonAtCenterWithTarget:target withAction:action withSize:CGSizeMake(30.0, 30.0)];
}

- (void)addButtonAtCenterWithTarget:(id )target withAction:(SEL )action withSize:(CGSize )size
{
    CGFloat width = size.width;
    if ( self.frame.size.width > width )
    {
        width = self.frame.size.width;
    }
    
    CGFloat height = size.height;
    if ( self.frame.size.height > height )
    {
        height = self.frame.size.height;
    }
    
    CGFloat x = self.center.x - (width / 2);
    CGFloat y = self.center.y - (height / 2);
    
    [self addButtonWithTarget:target action:action withX:x withY:y withWidth:width withHeight:height];
}

#pragma mark - Add button - Other
- (void)addButtonWithTarget:(id )target action:(SEL )action withX:(CGFloat )x withY:(CGFloat )y
{
    [self addButtonWithTarget:target action:action withX:x withY:y withSize:CGSizeMake(30.0, 30.0)];
}

- (void)addButtonWithTarget:(id )target action:(SEL )action withX:(CGFloat )x withY:(CGFloat )y withSize:(CGSize )size
{
    CGFloat width = size.width;
    if ( self.frame.size.width > width )
    {
        width = self.frame.size.width;
    }
    
    CGFloat height = size.height;
    if ( self.frame.size.height > height )
    {
        height = self.frame.size.height;
    }
    
    [self addButtonWithTarget:target action:action withX:x withY:y withWidth:width withHeight:height];
}

#pragma mark + Left
- (void)addButtonAtLeftTopWithTarget:(id )target withAction:(SEL )action
{
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y;
    
    [self addButtonWithTarget:target action:action withX:x withY:y];
}

- (void)addButtonAtLeftTopWithTarget:(id )target withAction:(SEL )action withSize:(CGSize )size
{
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y;
    
    [self addButtonWithTarget:target action:action withX:x withY:y withSize:size];
}

#pragma mark + Top
- (void)addButtonAtTopRightWithTarget:(id )target withAction:(SEL )action
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y;
    
    [self addButtonWithTarget:target action:action withX:x withY:y];
}

- (void)addButtonAtTopRightWithTarget:(id )target withAction:(SEL )action withSize:(CGSize )size
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y;
    
    [self addButtonWithTarget:target action:action withX:x withY:y withSize:size];
}

#pragma mark + Right
- (void)addButtonAtRightBottomWithTarget:(id )target withAction:(SEL )action
{
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    
    [self addButtonWithTarget:target action:action withX:x withY:y];
}

- (void)addButtonAtRightBottomWithTarget:(id )target withAction:(SEL )action withSize:(CGSize )size
{
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    
    [self addButtonWithTarget:target action:action withX:x withY:y withSize:size];
}

#pragma mark + Botton
- (void)addButtonAtBottonLeftWithTarget:(id )target withAction:(SEL )action
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    
    [self addButtonWithTarget:target action:action withX:x withY:y];
}

- (void)addButtonAtBottonLeftWithTarget:(id )target withAction:(SEL )action withSize:(CGSize )size
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    
    [self addButtonWithTarget:target action:action withX:x withY:y withSize:size];
}

@end
