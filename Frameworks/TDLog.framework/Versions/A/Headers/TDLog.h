//
//  TDLog.h
//  TDLog
//
//  Created by Thuỷ Đào on 19/02/2014.
//  Copyright (c) 2014 Thuỷ Đào. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <TDLog/TDEngineLog.h>


//--------------------------------------------------------
//  TUTORIAL
//--------------------------------------------------------
//STEP1: You need add email of feeback on 'TD_EmailDevelopment' field in split file!!! ***";
//STEP2: Insert '[TDEngineLog td_sharedManager];' into 'application:didFinishLaunchingWithOptions:'. The app will auto detect crash. So, enduser can choose the option to send crash log to mail did configure in above
//STEP3: Insert [TDEngineLog td_enableTDLog:YES onViewController:self]; into 'viewWillAppear' in the viewcontroller that you want to double click to show the button that enduser can tap to send log to email of developer
//STEP4: Use TDLog same as NSLOG