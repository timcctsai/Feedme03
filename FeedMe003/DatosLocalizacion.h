//
//  DatosLocalizacion.h
//  FeedMe003
//
//  Created by Henry Antonio Ambicho Trujillo on 9/13/12.
//  Copyright (c) 2012 apps4s. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DatosLocalizacion : NSObject

@property (nonatomic) float DatLatitud;
@property (nonatomic) float DatLongitud;

+(DatosLocalizacion *) sharedInstance;

@end
