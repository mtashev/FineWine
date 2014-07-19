//
//  CustomTableCell.h
//  FineWine
//
//  Created by Mariyan on 7/19/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *thumbnailImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end
