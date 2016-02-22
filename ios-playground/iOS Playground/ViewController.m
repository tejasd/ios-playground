//
//  ViewController.m
//  iOS Playground
//
//  Created by Tejas Deshpande on 2/20/16.
//  Copyright © 2016 Tejas Deshpande. All rights reserved.
//

#import "ViewController.h"
#import "ReactNativeContainerViewController.h"

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



- (IBAction)showReactView:(id)sender {
    ReactNativeContainerViewController *reactView = [ReactNativeContainerViewController new];
    [self presentViewController:reactView animated:YES completion:nil];
}
@end
