//
//  AboutViewController.h
//  FineWine
//
//  Created by Mariyan on 7/30/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController


@property (strong, nonatomic) IBOutlet UILabel *createdByLabel;
@property (strong, nonatomic) IBOutlet UIImageView *profileImage;
@property (strong, nonatomic) IBOutlet UITextView *detailsTextView;
@property (strong, nonatomic) IBOutlet UILabel *contactLabel;
@property (strong, nonatomic) IBOutlet UILabel *mailLabel;
@property (strong, nonatomic) IBOutlet UILabel *twitterLabel;

@end
