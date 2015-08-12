//
//  TDViewController.m
//  TDCore
//
//  Created by Thuỷ Đào on 06/15/2015.
//  Copyright (c) 2014 Thuỷ Đào. All rights reserved.
//

#import "TDViewController.h"
#import "TestModel.h"
#import "TestMultiDelegate.h"

@interface TDViewController ()

@end

@implementation TDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //test multi delegate
    TestMultiDelegate *testobj = [[TestMultiDelegate alloc] td_initWithDelegates:nil];
    
    TestModel *model1 = [TestModel new];
    model1.name = @"model1";
    [testobj td_addDelegate:model1];
    
    model1 = nil;
    
    TestModel *model2 = [TestModel new];
    model2.name = @"model2";
    [testobj td_addDelegate:model2];
    
    [testobj td_respondsToSelector:@selector(abc)];
    
    //test singleton
    [TestModel td_sharedInstance].name = @"test singleton";
    [[TestModel td_sharedInstance] print];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

//- (void)td_configureTheme
//{
//    TDLOG(@"");
//}

@end
