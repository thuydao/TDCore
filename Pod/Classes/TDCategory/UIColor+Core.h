//
//  UIColor+Core.h
// Core
//
//  " on 8/16/14.
//  ". All rights reserved.
//

#import <UIKit/UIKit.h>

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - BASE - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -//
#define COLOR_BASE_BLACK                                            [UIColor blackColor]
#define COLOR_BASE_BLUE                                             [UIColor blueColor]
#define COLOR_BASE_BROWN                                            [UIColor brownColor]
#define COLOR_BASE_CLEAR                                            [UIColor clearColor]
#define COLOR_BASE_CYAN                                             [UIColor cyanColor]
#define COLOR_BASE_DARK_GRAY                                        [UIColor darkGrayColor]
#define COLOR_BASE_DARK_TEXT                                        [UIColor darkTextColor]
#define COLOR_BASE_GRAY                                             [UIColor grayColor]
#define COLOR_BASE_GREEN                                            [UIColor greenColor]
#define COLOR_BASE_GROUP_TABLE_VIEW_BACKGROUND                      [UIColor groupTableViewBackgroundColor]
#define COLOR_BASE_LIGHT_GRAY                                       [UIColor lightGrayColor]
#define COLOR_BASE_LIGHT_TEXT                                       [UIColor lightTextColor]
#define COLOR_BASE_MAGENTA                                          [UIColor magentaColor]
#define COLOR_BASE_PURPLE                                           [UIColor purpleColor]
#define COLOR_BASE_RED                                              [UIColor redColor]
#define COLOR_BASE_SCROLL_VIEW_TEXT_URED_BACKGROUND                 [UIColor scrollViewTexturedBackgroundColor]
#define COLOR_BASE_UNDE_RPAGE_BACKGROUND                            [UIColor underPageBackgroundColor]
#define COLOR_BASE_VIEW_FLIPSIDE_BACKGROUND                         [UIColor viewFlipsideBackgroundColor]
#define COLOR_BASE_WHITE                                            [UIColor whiteColor]
#define COLOR_BASE_YELLOW                                           [UIColor yellowColor]

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - CUS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -//
#define COLOR_CUSTOM_RGB(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define COLOR_CUSTOM_RGB_ALPHA(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

@interface UIColor (Core)

@end
