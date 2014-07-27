//
//  HomeViewController.m
//  FineWine
//
//  Created by Mariyan on 7/27/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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
	
	self.typeImage.layer.cornerRadius = self.typeImage.frame.size.width / 2;
	self.typeImage.clipsToBounds = YES;
	self.typeImage.layer.borderWidth = 1.0f;
	self.typeImage.layer.borderColor = [UIColor whiteColor].CGColor;
	
	self.foodImage.layer.cornerRadius = self.foodImage.frame.size.width / 2;
	self.foodImage.clipsToBounds = YES;
	self.foodImage.layer.borderWidth = 1.0f;
	self.foodImage.layer.borderColor = [UIColor whiteColor].CGColor;
	
//	self.myWinesImage.layer.cornerRadius = self.myWinesImage.frame.size.width / 2;
//	self.myWinesImage.clipsToBounds = YES;
//	self.myWinesImage.layer.borderWidth = 1.0f;
//	self.myWinesImage.layer.borderColor = [UIColor whiteColor].CGColor;
	
	self.tipsImage.layer.cornerRadius = self.tipsImage.frame.size.width / 2;
	self.tipsImage.clipsToBounds = YES;
	self.tipsImage.layer.borderWidth = 1.0f;
	self.tipsImage.layer.borderColor = [UIColor whiteColor].CGColor;
}

@end
