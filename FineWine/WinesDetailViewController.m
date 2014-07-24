//
//  WinesDetailViewController.m
//  FineWine
//
//  Created by Mariyan on 7/24/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import "WinesDetailViewController.h"
#import "WinesViewController.h"

@interface WinesDetailViewController ()

@end

@implementation WinesDetailViewController

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
	
	self.title = self.wine.wineName;
	//	self.nameLabel.text = self.wine.wineName;
	self.imageView.image = [UIImage imageNamed:self.wine.wineImage];
	self.detailsTextView.text = self.wine.wineDetails;
	self.detailsTextView.editable = NO;
	self.temperatureTextView.text =  self.wine.wineTemperature;
	self.temperatureTextView.editable = NO;
	self.foodTextView.text = self.wine.wineFood;
	self.foodTextView.editable = NO;
}

@end
