//
//  ViewController.m
//  ios-playground
//
//  Created by Tejas Deshpande on 2/21/16.
//  Copyright © 2016 Tejas Deshpande. All rights reserved.
//

#import "ViewController.h"
#import "ReactNativeViewController.h"

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
    
}

@end
