//
//  Restaurante.h
//  FeedMe003
//
//  Created by Henry Antonio Ambicho Trujillo on 9/14/12.
//  Copyright (c) 2012 apps4s. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Restaurante : NSObject

@property (nonatomic, strong) NSString  * codigo;  //Conciderar cambiar a entero
@property (nonatomic, strong) NSString  * nombre;
@property (nonatomic, strong) NSString  * address;
@property (nonatomic, strong) NSString  * latitud;  //Conciderar cambiar a Float
@property (nonatomic, strong) NSString  * longitud; //Conciderar cambiar a Float
@property (nonatomic, strong) NSString  * disxxx;
//@property (nonatomic)  BOOL  debeDinero;


@end
