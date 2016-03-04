//
//  ViewController.m
//  ios-playground
//
//  Created by Tejas Deshpande on 2/21/16.
//  Copyright © 2016 Tejas Deshpande. All rights reserved.
//

#import "ViewController.h"
#import "ReactNativeViewController.h"
#import "ios_playground-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showReactNativeView:(id)sender {
    ReactNativeViewController *reactView = [ReactNativeViewController new];
    [self presentViewController:reactView animated:YES completion:nil];
}



- (IBAction)showNativeView:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"NativeStoryboard" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"nativeViewController"];
    ((ReactNativeViewController *)vc).showScreen = @"SimpleScreen";
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)showReactNativeScrollView:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"NativeStoryboard" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"nativeViewController"];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
