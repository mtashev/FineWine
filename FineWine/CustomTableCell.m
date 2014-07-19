//
//  CustomTableCell.m
//  FineWine
//
//  Created by Mariyan on 7/19/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import "CustomTableCell.h"

@implementation CustomTableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
	//Round images
	self.thumbnailImage.layer.cornerRadius = self.thumbnailImage.frame.size.width / 2;
	self.thumbnailImage.clipsToBounds = YES;
	self.thumbnailImage.layer.borderWidth = 1.0f;
	self.thumbnailImage.layer.borderColor = [UIColor blackColor].CGColor;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
