//
//  TipViewController.m
//  FineWine
//
//  Created by Mariyan on 7/26/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import "TipViewController.h"
#import "CustomTableCell.h"
#import "TipDetailViewController.h"
#import "Tip.h"

@interface TipViewController ()

@end

@implementation TipViewController

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

	NSString *path = [[NSBundle mainBundle] pathForResource:@"Tips" ofType:@"plist"];
	NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
	
	self.names = [dict objectForKey:@"Names"];
	self.details = [dict objectForKey:@"Details"];
	self.images = [dict objectForKey:@"Images"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return self.names.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *cellIdentifier = @"CustomCell";
	
	CustomTableCell *cell = (CustomTableCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
	
	if (cell == nil) {
		NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomTableCell" owner:self options:nil];
		cell = [nib objectAtIndex:0];
	}
	
	cell.nameLabel.text = [self.names objectAtIndex:indexPath.row];
	cell.thumbnailImage.image = [UIImage imageNamed:[self.images objectAtIndex:indexPath.row]];
	
	return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return 90;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([segue.identifier isEqualToString:@"showTipDetail"]) {
		NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
		TipDetailViewController *detailsViewController = segue.destinationViewController;
		
		Tip *selectedTip = [Tip new];
		selectedTip.tipName = [self.names objectAtIndex:indexPath.row];
		selectedTip.tipDetails = [self.details objectAtIndex:indexPath.row];
		selectedTip.tipImage = [self.images objectAtIndex:indexPath.row];
		
		detailsViewController.tip = selectedTip;
	}
}

@end














