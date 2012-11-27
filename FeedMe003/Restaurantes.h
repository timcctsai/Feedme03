//
//  Restaurantes.h
//  FeedMe003
//
//  Created by Henry Antonio Ambicho Trujillo on 9/14/12.
//  Copyright (c) 2012 apps4s. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Restaurantes : NSObject

@property (nonatomic, strong) NSMutableArray * restaurants; 

+(Restaurantes *) sharedInstance;

@end
