//
//  RedWinesViewController.h
//  FineWine
//
//  Created by Mariyan on 7/19/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Wine.h"
#import "RedWinesDetailViewController.h"

@interface RedWinesViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSMutableArray *names;
@property (strong, nonatomic) NSMutableArray *images;
@property (strong, nonatomic) NSMutableArray *details;
@property (strong, nonatomic) NSMutableArray *temperatures;
@property (strong, nonatomic) NSMutableArray *foods;

@end
