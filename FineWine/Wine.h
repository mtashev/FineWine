//
//  Wine.h
//  FineWine
//
//  Created by Mariyan on 7/21/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Wine : NSObject

@property (strong, nonatomic) NSString *name; //name of the wine
@property (strong, nonatomic) NSString *image; //image of the wine
@property (strong, nonatomic) NSString *information; // details for the wine
@property (strong, nonatomic) NSString *temperature; // appropriate temperature
@property (strong, nonatomic) NSString *food; // adequate food for this wine

@end
