//
//  DetailViewController.h
//  iOS Playground
//
//  Created by Tejas Deshpande on 2/20/16.
//  Copyright © 2016 Tejas Deshpande. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

