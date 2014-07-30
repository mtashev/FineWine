//
//  AboutViewController.m
//  FineWine
//
//  Created by Mariyan on 7/30/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

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
    // Do any additional setup after loading the view.
	
	self.profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2;
	self.profileImage.clipsToBounds = YES;
	self.profileImage.layer.borderWidth = 1.0f;
	self.profileImage.layer.borderColor = [UIColor whiteColor].CGColor;
	
	self.detailsTextView.editable = NO;
	self.detailsTextView.backgroundColor = [UIColor colorWithRed:204 green:204 blue:204 alpha:0.8f];
	
	self.createdByLabel.backgroundColor = [UIColor colorWithRed:204 green:204 blue:204 alpha:0.8f];
	self.contactLabel.backgroundColor = [UIColor colorWithRed:204 green:204 blue:204 alpha:0.8f];
	self.mailLabel.backgroundColor = [UIColor colorWithRed:204 green:204 blue:204 alpha:0.8f];
	self.twitterLabel.backgroundColor = [UIColor colorWithRed:204 green:204 blue:204 alpha:0.8f];
}

@end
