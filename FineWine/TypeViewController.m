//
//  TypeViewController.m
//  FineWine
//
//  Created by Mariyan on 7/27/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import "TypeViewController.h"

@interface TypeViewController ()

@end

@implementation TypeViewController

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
	
	self.redImage.layer.cornerRadius = self.redImage.frame.size.width / 2;
	self.redImage.clipsToBounds = YES;
	self.redImage.layer.borderWidth = 1.0f;
	self.redImage.layer.borderColor = [UIColor whiteColor].CGColor;
	
	self.whiteImage.layer.cornerRadius = self.whiteImage.frame.size.width / 2;
	self.whiteImage.clipsToBounds = YES;
	self.whiteImage.layer.borderWidth = 1.0f;
	self.whiteImage.layer.borderColor = [UIColor whiteColor].CGColor;
	
	self.roseImage.layer.cornerRadius = self.roseImage.frame.size.width / 2;
	self.roseImage.clipsToBounds = YES;
	self.roseImage.layer.borderWidth = 1.0f;
	self.roseImage.layer.borderColor = [UIColor whiteColor].CGColor;
	
	self.dessertImage.layer.cornerRadius = self.dessertImage.frame.size.width / 2;
	self.dessertImage.clipsToBounds = YES;
	self.dessertImage.layer.borderWidth = 1.0f;
	self.dessertImage.layer.borderColor = [UIColor whiteColor].CGColor;
	
	self.sparklingImage.layer.cornerRadius = self.sparklingImage.frame.size.width / 2;
	self.sparklingImage.clipsToBounds = YES;
	self.sparklingImage.layer.borderWidth = 1.0f;
	self.sparklingImage.layer.borderColor = [UIColor whiteColor].CGColor;
}

@end
