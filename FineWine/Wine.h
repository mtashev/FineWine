//
//  Wine.h
//  FineWine
//
//  Created by Mariyan on 7/21/14.
//  Copyright (c) 2014 Mariyan Tashev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Wine : NSObject

@property (strong, nonatomic) NSString *wineName; //name of the wine
@property (strong, nonatomic) NSString *wineImage; //image of the wine
@property (strong, nonatomic) NSString *wineDetails; // details for the wine
@property (strong, nonatomic) NSString *wineTemperature; // appropriate temperature
@property (strong, nonatomic) NSString *wineFood; // adequate food for this wine

@end
