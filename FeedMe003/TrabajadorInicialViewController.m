//
//  TrabajadorInicialViewController.m
//  FeedMe003
//
//  Created by Henry Antonio Ambicho Trujillo on 9/11/12.
//  Copyright (c) 2012 apps4s. All rights reserved.
//

#import "TrabajadorInicialViewController.h"

@interface TrabajadorInicialViewController ()

@end

@implementation TrabajadorInicialViewController

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
@end
