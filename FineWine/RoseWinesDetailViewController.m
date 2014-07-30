//
//  RoseWinesDetailViewController.m
//  FineWine
//
//  Created by Mariyan on 7/24/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import "RoseWinesDetailViewController.h"

@interface RoseWinesDetailViewController ()

@end

@implementation RoseWinesDetailViewController

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
	
	self.detailsTextView.backgroundColor = [UIColor colorWithRed:204 green:204 blue:204 alpha:0.8f];
	self.foodTextView.backgroundColor = [UIColor colorWithRed:204 green:204 blue:204 alpha:0.8f];
	self.temperatureTextView.backgroundColor = [UIColor colorWithRed:204 green:204 blue:204 alpha:0.8f];
	
	self.detailsLabel.text = @"Details";
	self.detailsLabel.backgroundColor = [UIColor colorWithRed:204 green:204 blue:204 alpha:0.8f];
	
	self.pairLabel.text = @"Pair with food";
	self.pairLabel.backgroundColor = [UIColor colorWithRed:204 green:204 blue:204 alpha:0.8f];
	
	self.temperatureLabel.text = @"Recommended serving temperature";
	self.temperatureLabel.backgroundColor = [UIColor colorWithRed:204 green:204 blue:204 alpha:0.8f];
}


@end
