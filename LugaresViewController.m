//
//  LugaresViewController.m
//  FeedMe003
//
//  Created by Henry Antonio Ambicho Trujillo on 9/10/12.
//  Copyright (c) 2012 apps4s. All rights reserved.
//

#import "LugaresViewController.h"
#import "JSON.h"
#import "DatosLocalizacion.h"
#import "Restaurante.h"
#import "Restaurantes.h"

@interface LugaresViewController ()

@end

@implementation LugaresViewController
@synthesize datos;
@synthesize responseData;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    float x1 = [DatosLocalizacion sharedInstance].DatLatitud;
    float x2 = [DatosLocalizacion sharedInstance].DatLongitud;
    NSString * mensaje = [[NSString alloc] initWithFormat:@"Lat: %f, Lon: %f",x1,x2];
    UIAlertView * alertax = [[UIAlertView alloc] initWithTitle:@"Titulo" message:mensaje 
                                                      delegate:nil cancelButtonTitle:@"aceptar" otherButtonTitles:nil];
    [alertax show];
    
    //self.datos = [[NSMutableArray alloc] initWithObjects:@"Restaurante Charlotte",@"Danica",@"Sr Limon",@"El 2do Muelle",@"Norkis",@"Pardos", nil];
    self.datos = [[NSMutableArray alloc] init];
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //****************************************************************    
    //********************* Requerimiento  POST  *********************
    //****************************************************************
    NSURL *urlPost = [[NSURL alloc]initWithString:@"http://feedme.owson.com/ws/restaurantbranch/nearlist"];
    
    NSMutableString *parametros = [[NSMutableString alloc] init];
    [parametros appendString:@"latitud="];
    [parametros appendString:@"-12.119522199141324"];
    //    [parametros appendString:latit];    
    [parametros appendString:@"&longitud="];
    [parametros appendString:@"-77.02264623641963"];
    //    [parametros appendString:longi];    
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:urlPost];
    //NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:urlPost];
    
    [request setHTTPBody:[parametros dataUsingEncoding:NSUTF8StringEncoding]];
    [request addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-type"];
    [request setHTTPMethod:@"POST"];
    
    //[navegador loadRequest:request];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    NSLog(@"empezamos request");
    if (connection==nil) {
        //No se pudo conectarß
        NSLog(@"No se pudo conectar");
    } else {
        //acumuladatos = [[NSMutableData alloc] init];
        responseData = [[NSMutableData alloc] init];
    }
    
}


- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    [responseData setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)datosRecibidos
{    
    [responseData appendData:datosRecibidos];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString* responseString = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
    //NSLog(@"responseString---%@", responseString);
    
    SBJSON *jsonParser = [[SBJSON alloc] init];
    id json = [jsonParser objectWithString:responseString];
    // data = [json objectForKey:@"data"];  
    
    //NSLog(@"finalizooo %@",[json objectForKey:@"success"]);
    NSMutableArray * nn = [json objectForKey:@"list"];
    
    //NSLog(@"finalizooo %i",[nn count]);
    for (NSDictionary *Dic in nn) {

        
      
        Restaurante *restaurant = [[Restaurante alloc]init];
        
        restaurant.codigo = [Dic objectForKey:@"id"];
        restaurant.nombre = [Dic objectForKey:@"name"];
        restaurant.address = [Dic objectForKey:@"address"];
        restaurant.latitud = [Dic objectForKey:@"latitud"];
        restaurant.longitud = [Dic objectForKey:@"longitud"];        
        restaurant.disxxx = [Dic objectForKey:@"dis"];                
        
        NSMutableArray *restaurants = [Restaurantes sharedInstance].restaurants ;
        [restaurants addObject:restaurant];
        
        [datos addObject:[Dic objectForKey:@"name"]];  // X Eliminar

    }
       NSLog(@"== %@",[self.datos description]);


    [self.tableView reloadData];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{ 
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //return [datos count];
    
    NSMutableArray *restaurants = [Restaurantes sharedInstance].restaurants ;
    return [restaurants count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSMutableArray *restaurants = [Restaurantes sharedInstance].restaurants ;
    Restaurante * restaurant = [restaurants objectAtIndex:indexPath.row];
    
    static NSString *CellIdentifier = @"celdita";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //condicional aumentada por Santos
    /*
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
     */
    
    // Configure the cell...
    //cell.textLabel.text = [datos objectAtIndex:indexPath.row];  
    cell.textLabel.text = restaurant.nombre;    

    return cell;

}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

- (IBAction)btnCancel:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
}

@end
