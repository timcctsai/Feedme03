//
//  EntrarViewController.m
//  FeedMe003
//
//  Created by Henry Antonio Ambicho Trujillo on 9/10/12.
//  Copyright (c) 2012 apps4s. All rights reserved.
//

#import "EntrarViewController.h"
#import "DatosLocalizacion.h"

@interface EntrarViewController ()

@end

@implementation EntrarViewController
@synthesize managerLoc;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //**************************************  
    //**************************************      
    self.managerLoc = [[CLLocationManager alloc] init];
    self.managerLoc.distanceFilter = 100;  // cada que distancia cambia
    self.managerLoc.desiredAccuracy = kCLLocationAccuracyThreeKilometers; //la precicion
    self.managerLoc.delegate = self;  //generando un delegate
    
    [self.managerLoc startUpdatingLocation]; //Inicia la localizacion    
    //**************************************  
    //**************************************      
    
}
-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    
    float x1=[DatosLocalizacion sharedInstance].DatLatitud;
    float x2=[DatosLocalizacion sharedInstance].DatLongitud;
    x1=newLocation.coordinate.latitude;
    x2=newLocation.coordinate.longitude;
    [DatosLocalizacion sharedInstance].DatLatitud=x1;
    [DatosLocalizacion sharedInstance].DatLongitud=x2;
    //NSLog(@"--> %f %f",x1,x2);
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)btnCancel:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)btnEntrar:(id)sender {
    
    UIAlertView * alerta = [[UIAlertView alloc] initWithTitle:@"Titulo" message:@"A punto de Entrar a Lugares Cercanos" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil];
    [alerta show];
    
}
@end
