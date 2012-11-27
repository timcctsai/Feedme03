//
//  FeedmePrincipalViewController.m
//  FeedMe003
//
//  Created by Henry Antonio Ambicho Trujillo on 9/11/12.
//  Copyright (c) 2012 apps4s. All rights reserved.
//

#import "FeedmePrincipalViewController.h"

@interface FeedmePrincipalViewController ()

@end

@implementation FeedmePrincipalViewController
@synthesize scvCategoria;
@synthesize btnOutletCat;
@synthesize btn1;
@synthesize btn2;
@synthesize btn3;
@synthesize btn4;
@synthesize acumuladatos;
@synthesize contador;

@synthesize contadorTag;

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
    
    [self beginDownloading:@"http://www.soft4movil.com/soft4movil.com/comida001.jpg"];
    contador=0; 

    
    //Inicializar el tamano del contenido de scvCategoria:
    scvCategoria.contentSize = CGSizeMake(600, 100);
	
    // Aqui se inicializa las imagenes
    /*
        UIImage *  btnImage_www = [[UIImage alloc] init ];
    for (UIButton * btr in btnOutletCat) {
            NSString *imageName = [NSString stringWithFormat:@"bb%d.png", (btr.tag)];
            btnImage_www = [UIImage imageNamed:imageName];
            [btr setImage:btnImage_www forState:UIControlStateNormal];        
    }                                  
    */
    
    
}

- (void)viewDidUnload
{
    [self setBtn1:nil];
    [self setBtn2:nil];
    [self setBtn3:nil];
    [self setBtn4:nil];
    [self setScvCategoria:nil];
    [self setBtnOutletCat:nil];
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

-(void)beginDownloading:(NSString *) archivoimg{
    
    NSURL * ruta = [[NSURL alloc] initWithString:archivoimg];    
    NSURLRequest * requerimiento = [[NSURLRequest alloc] initWithURL:ruta];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:requerimiento delegate:self];
    if (connection==nil) {
        //No se pudo conectar
    } else {
        acumuladatos = [[NSMutableData alloc] init];
    }
    
    
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    //longitud = [response expectedContentLength];
    //progre.progress = 0;  
    //etiqueta.text = [[NSString alloc] initWithFormat:@" 0"];
    [acumuladatos setLength:0];
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)datosRecibidos
{    
    [acumuladatos appendData:datosRecibidos];
    
    //float porcentaje =(float)[acumuladatos length]/longitud;
    //progre.progress = porcentaje;
    //etiqueta.text = [[NSString alloc] initWithFormat:@" %3.0f %%",porcentaje*100];
    
    /*
     long acutot=(long)[acumuladatos length];
     if (longitud==acutot){
     contador=contador+1;
     }
     */
    
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    UIImage *imagen1 = [[UIImage alloc] initWithData:acumuladatos ];
    contador++;
    
    switch (contador) {
        case 1:
            [btn1 setBackgroundImage:imagen1 forState:UIControlStateNormal];
            [self beginDownloading:@"http://www.soft4movil.com/soft4movil.com/comida002.jpg"];
            break;
        case 2:
            [btn2 setBackgroundImage:imagen1 forState:UIControlStateNormal];
            
            [self beginDownloading:@"http://www.soft4movil.com/soft4movil.com/comida003.jpg"];
            break;
        case 3:
            [btn3 setBackgroundImage:imagen1 forState:UIControlStateNormal];
            
            [self beginDownloading:@"http://www.soft4movil.com/soft4movil.com/comida004.jpg"];
            break;
        case 4:
            [btn4 setBackgroundImage:imagen1 forState:UIControlStateNormal];
        default:
            break;
    }    
    
}
- (IBAction)btnCategoria:(id)sender {
    
    UIButton * boton = (UIButton *)sender;
    //NSInteger contador=0;
    contadorTag=[[NSMutableString alloc] initWithFormat:@"0"];

    // Mejorar con una funcion RUTA
    //NSString * rutaxxx = [[NSBundle mainBundle] pathForResource:@"bb1" ofType:@"png"];
    //NSURL * urlitoxxx = [[NSURL alloc] initFileURLWithPath:rutaxxx];
    
    UIImage *  btnImage = [[UIImage alloc] init ];
    //NSString * cad002 = [[NSString alloc] init];
    switch (boton.tag) {
        case 1:
            
            
            for (UIButton * btr in btnOutletCat) {
                if (btr.tag==boton.tag) {
                    
                    btnImage = [UIImage imageNamed:@"bb01.png"];
                    [btr setImage:btnImage forState:UIControlStateNormal];        
                    //[boton setImage:btnImage forState:UIControlStateNormal]; 
                    
                }else {
                    //cad002 = ;
                    NSString *imageName = [NSString stringWithFormat:@"bb%d.png", (btr.tag)];
                    btnImage = [UIImage imageNamed:imageName];
                    [btr setImage:btnImage forState:UIControlStateNormal];        
                    
                }
            }       
            
            break;
        case 2:
            for (UIButton * btr in btnOutletCat) {
                if (btr.tag==boton.tag) {
                    
                    btnImage = [UIImage imageNamed:@"bb02.png"];
                    [btr setImage:btnImage forState:UIControlStateNormal];        
                    //[boton setImage:btnImage forState:UIControlStateNormal]; 
                    
                }else {
                    //cad002 = ;
                    NSString *imageName = [NSString stringWithFormat:@"bb%d.png", (btr.tag)];
                    btnImage = [UIImage imageNamed:imageName];
                    [btr setImage:btnImage forState:UIControlStateNormal];        
                    
                }
            }                 

            break;
        case 3:
            for (UIButton * btr in btnOutletCat) {
                if (btr.tag==boton.tag) {
                    
                    btnImage = [UIImage imageNamed:@"bb03.png"];
                    [btr setImage:btnImage forState:UIControlStateNormal];        
                    //[boton setImage:btnImage forState:UIControlStateNormal]; 
                    
                }else {
                    //cad002 = ;
                    NSString *imageName = [NSString stringWithFormat:@"bb%d.png", (btr.tag)];
                    btnImage = [UIImage imageNamed:imageName];
                    [btr setImage:btnImage forState:UIControlStateNormal];        
                    
                }
            }    
            
            break;
        case 4:
            for (UIButton * btr in btnOutletCat) {
                if (btr.tag==boton.tag) {
                    
                    btnImage = [UIImage imageNamed:@"bb04.png"];
                    [btr setImage:btnImage forState:UIControlStateNormal];        
                    //[boton setImage:btnImage forState:UIControlStateNormal]; 
                    
                }else {
                    //cad002 = ;
                    NSString *imageName = [NSString stringWithFormat:@"bb%d.png", (btr.tag)];
                    btnImage = [UIImage imageNamed:imageName];
                    [btr setImage:btnImage forState:UIControlStateNormal];        
                    
                }
            }                                 
            break;
        case 5:
            for (UIButton * btr in btnOutletCat) {
                if (btr.tag==boton.tag) {
                    
                    btnImage = [UIImage imageNamed:@"bb05.png"];
                    [btr setImage:btnImage forState:UIControlStateNormal];        
                    //[boton setImage:btnImage forState:UIControlStateNormal]; 
                    
                }else {
                    //cad002 = ;
                    NSString *imageName = [NSString stringWithFormat:@"bb%d.png", (btr.tag)];
                    btnImage = [UIImage imageNamed:imageName];
                    [btr setImage:btnImage forState:UIControlStateNormal];        
                    
                }
            }              
            break;            
            
        default:
            break;
    }
    
    /*
    NSString * cadena = [[NSString alloc] initWithFormat:@"El tag del Boton es: %@",contadorTag];
    UIAlertView * mensaje = [[UIAlertView alloc] initWithTitle:@"Titulo" 
                                                       message:cadena 
                                                      delegate:nil 
                                             cancelButtonTitle:@"Aceptar" otherButtonTitles:nil];
    [mensaje show];
    */
    
}



@end
