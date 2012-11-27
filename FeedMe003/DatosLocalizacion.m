//
//  DatosLocalizacion.m
//  FeedMe003
//
//  Created by Henry Antonio Ambicho Trujillo on 9/13/12.
//  Copyright (c) 2012 apps4s. All rights reserved.
//

#import "DatosLocalizacion.h"

@implementation DatosLocalizacion

@synthesize DatLatitud,DatLongitud;

static DatosLocalizacion * instancia;
+(DatosLocalizacion *) sharedInstance {
    if (instancia ==nil) {
        instancia = [[DatosLocalizacion alloc] init];
    }
    return instancia;
}

@end
