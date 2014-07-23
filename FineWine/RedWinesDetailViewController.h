//
//  RedWinesDetailViewController.h
//  FineWine
//
//  Created by Mariyan on 7/21/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Wine.h"
#import "RedWinesViewController.h"

@interface RedWinesDetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UITextView *detailsTextView;
@property (strong, nonatomic) IBOutlet UILabel *temperatureLabel;
@property (strong, nonatomic) IBOutlet UITextView *foodTextView;

@property (strong, nonatomic) Wine *wine;

@end
