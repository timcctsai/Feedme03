//
//  LugaresViewController.h
//  FeedMe003
//
//  Created by Henry Antonio Ambicho Trujillo on 9/10/12.
//  Copyright (c) 2012 apps4s. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LugaresViewController : UITableViewController <UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray * datos;

@property (nonatomic, strong) NSMutableData * responseData;

- (IBAction)btnCancel:(id)sender;

@end
