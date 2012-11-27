//
//  MoreOptionsViewController.m
//  FeedMe003
//
//  Created by Henry Antonio Ambicho Trujillo on 9/12/12.
//  Copyright (c) 2012 apps4s. All rights reserved.
//

#import "MoreOptionsViewController.h"

@interface MoreOptionsViewController ()

@end

@implementation MoreOptionsViewController

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

- (IBAction)btnLlamarMozo:(id)sender {
    UIAlertView * alerta=[[UIAlertView alloc] initWithTitle:@"Titulo" message:@"Mensaje" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil];
    [alerta show];
}

- (IBAction)btnEncuesta:(id)sender {
    UIAlertView * alerta=[[UIAlertView alloc] initWithTitle:@"Titulo" message:@"Mensaje" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil];
    [alerta show];    
}

- (IBAction)btnComparte:(id)sender {
    UIAlertView * alerta=[[UIAlertView alloc] initWithTitle:@"Titulo" message:@"Mensaje" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil];
    [alerta show];    
}

- (IBAction)btnPedirCuenta:(id)sender {
    UIAlertView * alerta=[[UIAlertView alloc] initWithTitle:@"Titulo" message:@"Mensaje" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil];
    [alerta show];    
}

- (IBAction)btnValetParking:(id)sender {
    UIAlertView * alerta=[[UIAlertView alloc] initWithTitle:@"Titulo" message:@"Mensaje" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil];
    [alerta show];    
}

- (IBAction)btnReservar:(id)sender {
    UIAlertView * alerta=[[UIAlertView alloc] initWithTitle:@"Titulo" message:@"Mensaje" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil];
    [alerta show];    
}

- (IBAction)btnMasOpciones:(id)sender {
    UIAlertView * alerta=[[UIAlertView alloc] initWithTitle:@"Titulo" message:@"Mensaje" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil];
    [alerta show];    
}


@end
