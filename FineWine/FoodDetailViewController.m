//
//  FoodDetailViewController.m
//  FineWine
//
//  Created by Mariyan on 7/26/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import "FoodDetailViewController.h"

@interface FoodDetailViewController ()

@end

@implementation FoodDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.title = self.food.foodName;
	self.imageView.image = [UIImage imageNamed:self.food.foodImage];
	self.detailsTextView.text = self.food.foodDetails;
	self.detailsTextView.editable = NO;
	
	self.detailsTextView.backgroundColor = [UIColor colorWithRed:204 green:204 blue:204 alpha:0.8f];
	self.detailsLabel.text = @"Details";
	self.detailsLabel.backgroundColor = [UIColor colorWithRed:204 green:204 blue:204 alpha:0.8f];
}

@end
