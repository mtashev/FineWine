//
//  FoodViewController.m
//  FineWine
//
//  Created by Mariyan on 7/26/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import "FoodViewController.h"
#import "CustomTableCell.h"
#import "FoodDetailViewController.h"
#import "Food.h"

@interface FoodViewController ()

@end

@implementation FoodViewController

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
	
	NSString *path = [[NSBundle mainBundle] pathForResource:@"Food" ofType:@"plist"];
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
	if ([segue.identifier isEqualToString:@"showFoodDetail"]) {
		NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
		FoodDetailViewController *detailsViewController = segue.destinationViewController;
		
		Food *selectedFood = [Food new];
		selectedFood.foodName = [self.names objectAtIndex:indexPath.row];
		selectedFood.foodDetails = [self.details objectAtIndex:indexPath.row];
		selectedFood.foodImage = [self.images objectAtIndex:indexPath.row];
		
		detailsViewController.food = selectedFood;
	}
}

@end




























