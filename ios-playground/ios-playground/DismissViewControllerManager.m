//
//  DismissViewControllerManager.m
//  ios-playground
//
//  Created by Tejas Deshpande on 2/21/16.
//  Copyright © 2016 Tejas Deshpande. All rights reserved.
//

#import "DismissViewControllerManager.h"

@implementation DismissViewControllerManager

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(goBack)
{
    [[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:@"dismissViewController" object:nil]];
}

@end
