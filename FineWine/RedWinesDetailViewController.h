//
//  RedWinesDetailViewController.h
//  FineWine
//
//  Created by Mariyan on 7/21/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Wine.h"

@interface RedWinesDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UITextView *information;

@property (strong, nonatomic) Wine *wine;

@end
