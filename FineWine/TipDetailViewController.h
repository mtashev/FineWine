//
//  TipDetailViewController.h
//  FineWine
//
//  Created by Mariyan on 7/26/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tip.h"

@interface TipDetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UITextView *detailsTextView;

@property (strong, nonatomic) Tip *tip;

@end