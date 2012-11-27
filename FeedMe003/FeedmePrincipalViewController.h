//
//  FeedmePrincipalViewController.h
//  FeedMe003
//
//  Created by Henry Antonio Ambicho Trujillo on 9/11/12.
//  Copyright (c) 2012 apps4s. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;

@interface FeedmePrincipalViewController : UIViewController

@property (nonatomic, strong) NSMutableData * acumuladatos;
@property (strong, nonatomic) IBOutlet UIButton *btn1;
@property (strong, nonatomic) IBOutlet UIButton *btn2;
@property (strong, nonatomic) IBOutlet UIButton *btn3;
@property (strong, nonatomic) IBOutlet UIButton *btn4;

-(void)beginDownloading:(NSString *) archivoimg;
@property int contador;

- (IBAction)btnCancel:(id)sender;
// Aqui El Action de los Botones del ScrollView

@property (strong, nonatomic) NSMutableString * contadorTag;
- (IBAction)btnCategoria:(id)sender;
@property (strong, nonatomic) IBOutlet UIScrollView *scvCategoria;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btnOutletCat;




@end
