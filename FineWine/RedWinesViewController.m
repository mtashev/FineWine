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
    // Do any additional setup after loading the view.
	
	
	Wine *w1 = [[Wine alloc] init];
	w1.name = @"Red Wine";
	w1.image = @"wine1.png";
	w1.temperature = @"15-20 degrees";
	w1.information = @"Drink that crap while it's good";
	w1.food = @"With hamburgers man. With hamburgers!";
	
	Wine *w2 = [[Wine alloc] init];
	w2.name = @"White Wine";
	w2.image = @"wine2.png";
	w2.temperature = @"12-25 degrees";
	w2.information = @"Drink that crap while it's good";
	w2.food = @"With hamburgers man. With hamburgers!";
	
	Wine *w3 = [[Wine alloc] init];
	w3.name = @"White Wine";
	w3.image = @"wine3.png";
	w3.temperature = @"19-25 degrees";
	w3.information = @"Drink that crap while it's good With hamburgers man. With hamburgers!With hamburgers man. With hamburgers!With hamburgers man. With hamburgers!With hamburgers man. With hamburgers!With hamburgers man. With hamburgers!With hamburgers man. With hamburgers!With hamburgers man. With hamburgers!With hamburgers man. With hamburgers!";
	w3.food = @"With hamburgers man. With hamburgers!";

	self.wineList = [NSMutableArray arrayWithObjects:w1,w2,w3, nil];
	//self.thumbnails = [NSMutableArray arrayWithObjects:@"wine1.png", @"wine2.png", @"wine3.png", nil];
	
	}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return self.wineList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"CustomCell";
	
    CustomTableCell *cell = (CustomTableCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
	//UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
	
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomTableCell" owner:self options:nil];
		cell = [nib objectAtIndex:0];
    }
	
    // Configure the cell...
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
//    }
	
    Wine *wine = [self.wineList objectAtIndex:indexPath.row];
	cell.nameLabel.text = wine.name;
	cell.thumbnailImage.image = [UIImage imageNamed:wine.image];
	
	
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
		destViewController.wine = [self.wineList objectAtIndex:indexPath.row];
	}
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
