//
//  RedWinesViewController.h
//  FineWine
//
//  Created by Mariyan on 7/19/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RedWinesViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSMutableArray *wineList;
@property (strong, nonatomic) NSMutableArray *thumbnails;

@end
