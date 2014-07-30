//
//  FoodDetailViewController.h
//  FineWine
//
//  Created by Mariyan on 7/26/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Food.h"

@interface FoodDetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UITextView *detailsTextView;
@property (strong, nonatomic) IBOutlet UILabel *detailsLabel;

@property (strong, nonatomic) Food *food;

@end
