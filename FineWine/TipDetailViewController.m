//
//  TipDetailViewController.m
//  FineWine
//
//  Created by Mariyan on 7/26/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import "TipDetailViewController.h"

@interface TipDetailViewController ()

@end

@implementation TipDetailViewController

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
	
	self.title = self.tip.tipName;
	self.detailsTextView.text = self.tip.tipDetails;
	self.detailsTextView.editable = NO;
	self.imageView.image = [UIImage imageNamed:self.tip.tipImage];
}

@end
