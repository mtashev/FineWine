//
//  SparklingWinesViewController.m
//  FineWine
//
//  Created by Mariyan on 7/24/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import "SparklingWinesViewController.h"

@interface SparklingWinesViewController ()

@end

@implementation SparklingWinesViewController

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
	
	NSString *path = [[NSBundle mainBundle] pathForResource:@"SparklingWines" ofType:@"plist"];
	NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
	
	self.names = [dict objectForKey:@"Names"];
	self.details = [dict objectForKey:@"Details"];
	self.images = [dict objectForKey:@"Images"];
	self.temperatures = [dict objectForKey:@"Temperatures"];
	self.foods = [dict objectForKey:@"Foods"];
	
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([segue.identifier isEqualToString:@"showSparklingWineDetail"]) {
		
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
