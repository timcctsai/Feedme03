//
//  Restaurantes.m
//  FeedMe003
//
//  Created by Henry Antonio Ambicho Trujillo on 9/14/12.
//  Copyright (c) 2012 apps4s. All rights reserved.
//

#import "Restaurantes.h"

@implementation Restaurantes

@synthesize restaurants;


static Restaurantes * instancia;
+(Restaurantes *) sharedInstance {
    if (instancia ==nil) {
        instancia = [[Restaurantes alloc] init];
    }
    return instancia;
}


-(id) init{
    if (self=[super init]) {
        //[self leer];  //Esto se impelmenta luego....
        if (self.restaurants==nil) {
            self.restaurants = [[NSMutableArray alloc] init];
        }
    }
    return self;
}

@end
