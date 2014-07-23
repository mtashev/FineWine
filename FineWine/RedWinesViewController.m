//
//  RedWinesViewController.m
//  FineWine
//
//  Created by Mariyan on 7/19/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import "RedWinesViewController.h"
#import "CustomTableCell.h"
#import "RedWinesDetailViewController.h"
#import "Wine.h"

@interface RedWinesViewController ()

@end

@implementation RedWinesViewController

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
	
	NSString *path = [[NSBundle mainBundle] pathForResource:@"RedWines" ofType:@"plist"];
	NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];

	self.names = [dict objectForKey:@"Names"];
	self.details = [dict objectForKey:@"Details"];
	self.images = [dict objectForKey:@"Images"];
	self.temperatures = [dict objectForKey:@"Temperatures"];
	self.foods = [dict objectForKey:@"Foods"];

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
	if ([segue.identifier isEqualToString:@"showRedWineDetail"]) {
		
		NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
		RedWinesDetailViewController *destViewController = segue.destinationViewController;
		
		Wine *selectedWine = [Wine new];
		selectedWine.wineName = [self.names objectAtIndex:indexPath.row];
		selectedWine.wineDetails = [self.details objectAtIndex:indexPath.row];
		selectedWine.wineImage = [self.images objectAtIndex:indexPath.row];
		selectedWine.wineTemperature = [self.temperatures objectAtIndex:indexPath.row];
		selectedWine.wineFood = [self.foods objectAtIndex:indexPath.row];
		
		destViewController.wine = selectedWine;
	}
}

@end
