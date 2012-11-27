//
//  EntrarViewController.h
//  FeedMe003
//
//  Created by Henry Antonio Ambicho Trujillo on 9/10/12.
//  Copyright (c) 2012 apps4s. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface EntrarViewController : UIViewController <CLLocationManagerDelegate>

@property (nonatomic, strong) CLLocationManager * managerLoc;

- (IBAction)btnCancel:(id)sender;
- (IBAction)btnEntrar:(id)sender;
    
@end

