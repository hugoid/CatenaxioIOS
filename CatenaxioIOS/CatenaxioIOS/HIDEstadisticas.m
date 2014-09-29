//
//  HIDEstadisticas.m
//  CatenaxioIOS
//
//  Created by Hugo Izquierdo on 9/27/14.
//  Copyright (c) 2014 Hugo Izquierdo. All rights reserved.
//

#import "HIDEstadisticas.h"
#import "HIDObjetoEstadisticas.h"
#import "HIDCeldaEstadisticaCell.h"
@interface HIDEstadisticas ()

@end

@implementation HIDEstadisticas

NSMutableArray *celdasEstadisticas;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
        celdasEstadisticas=[[NSMutableArray alloc]initWithCapacity:8];
        
        //abel
        HIDObjetoEstadisticas *abel=[[HIDObjetoEstadisticas alloc]initWithJugador:[UIImage imageNamed:@"abel"]
                                                                      withTotales:@"4"
                                                                      withJugados:@"6"
                                                                      withGanados:@"0"
                                                                        withGoles:@"4"
                                                                   withPorcentaje:@"10"
                                                                   withAsistencia:@"4"];
        [celdasEstadisticas addObject:abel];
        
        HIDObjetoEstadisticas *anton=[[HIDObjetoEstadisticas alloc]initWithJugador:[UIImage imageNamed:@"anton"]
                                                                      withTotales:@"4"
                                                                      withJugados:@"6"
                                                                      withGanados:@"0"
                                                                        withGoles:@"4"
                                                                   withPorcentaje:@"10"
                                                                   withAsistencia:@"4"];
        [celdasEstadisticas addObject:anton];
        
        HIDObjetoEstadisticas *cano=[[HIDObjetoEstadisticas alloc]initWithJugador:[UIImage imageNamed:@"hector"]
                                                                      withTotales:@"4"
                                                                      withJugados:@"6"
                                                                      withGanados:@"0"
                                                                        withGoles:@"4"
                                                                   withPorcentaje:@"10"
                                                                   withAsistencia:@"4"];
        [celdasEstadisticas addObject:cano];
        
        HIDObjetoEstadisticas *hugo=[[HIDObjetoEstadisticas alloc]initWithJugador:[UIImage imageNamed:@"hugo3"]
                                                                      withTotales:@"4"
                                                                      withJugados:@"6"
                                                                      withGanados:@"0"
                                                                        withGoles:@"4"
                                                                   withPorcentaje:@"10"
                                                                   withAsistencia:@"4"];
        [celdasEstadisticas addObject:hugo];
        
        HIDObjetoEstadisticas *jordan=[[HIDObjetoEstadisticas alloc]initWithJugador:[UIImage imageNamed:@"jordan"]
                                                                      withTotales:@"4"
                                                                      withJugados:@"6"
                                                                      withGanados:@"0"
                                                                        withGoles:@"4"
                                                                   withPorcentaje:@"10"
                                                                   withAsistencia:@"4"];
        [celdasEstadisticas addObject:jordan];
        
        HIDObjetoEstadisticas *juanito=[[HIDObjetoEstadisticas alloc]initWithJugador:[UIImage imageNamed:@"juanito"]
                                                                      withTotales:@"4"
                                                                      withJugados:@"6"
                                                                      withGanados:@"0"
                                                                        withGoles:@"4"
                                                                   withPorcentaje:@"10"
                                                                   withAsistencia:@"4"];
        [celdasEstadisticas addObject:juanito];
        
        HIDObjetoEstadisticas *meri=[[HIDObjetoEstadisticas alloc]initWithJugador:[UIImage imageNamed:@"meri"]
                                                                      withTotales:@"4"
                                                                      withJugados:@"6"
                                                                      withGanados:@"0"
                                                                        withGoles:@"4"
                                                                   withPorcentaje:@"10"
                                                                   withAsistencia:@"4"];
        [celdasEstadisticas addObject:meri];
        
        HIDObjetoEstadisticas *fer=[[HIDObjetoEstadisticas alloc]initWithJugador:[UIImage imageNamed:@"fer"]
                                                                      withTotales:@"4"
                                                                      withJugados:@"6"
                                                                      withGanados:@"0"
                                                                        withGoles:@"4"
                                                                   withPorcentaje:@"10"
                                                                   withAsistencia:@"4"];
        [celdasEstadisticas addObject:fer];
    
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
    //configuracion de la tabla
    [self.navigationController setNavigationBarHidden:NO];
    //color de la barra
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    //color de las celdas no rellenadas
    [self.tableView setBackgroundColor:[UIColor blackColor]];
    self.title=@"Estadísticas";
    //colo de los botones
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    //cambiar textos de la barra color
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName,nil]];
    
    //insertar botones en la barra de herramientas
    UIBarButtonItem *botonActualizar=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh
                                                                                   target:self
                                                                                   action:@selector(pulsarBotonActualizar:)];
    //self.navigationItem.rightBarButtonItem=botonActualizar;
    
    UIBarButtonItem *botonGrafica=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks
                                                                                   target:self
                                                                                   action:@selector(pulsarBotonGrafica:)];
    //self.navigationItem.rightBarButtonItem=botonActualizar;

    [self.navigationItem setRightBarButtonItems:@[botonActualizar,botonGrafica] animated:YES];
    
    
    UINib *cellNib = [UINib nibWithNibName:@"CeldaEstadisticas"
                                    bundle:nil];
    
    
    
    [self.tableView registerNib:cellNib forCellReuseIdentifier:[HIDCeldaEstadisticaCell cellId]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [celdasEstadisticas count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HIDCeldaEstadisticaCell *cell = [tableView dequeueReusableCellWithIdentifier:[HIDCeldaEstadisticaCell cellId]];
    if(cell==nil){
        cell=[[HIDCeldaEstadisticaCell alloc]init];
    }
    
    cell.labelPartidosTotales.text=[[celdasEstadisticas objectAtIndex:indexPath.row] totales2];
    cell.labelPartidosJugados.text=[[celdasEstadisticas objectAtIndex:indexPath.row] jugados2];
    cell.labelPartidosGanados.text=[[celdasEstadisticas objectAtIndex:indexPath.row] ganados2];
    cell.labelGoles.text=[[celdasEstadisticas objectAtIndex:indexPath.row] goles2];
   cell.labelPorcentajeGoles.text=[[celdasEstadisticas objectAtIndex:indexPath.row] porcentaje2];
    cell.labelAsistencias.text=[[celdasEstadisticas objectAtIndex:indexPath.row] asistencia2];
    
    UIImageView *imagen=[[UIImageView alloc]initWithImage:[[celdasEstadisticas objectAtIndex:indexPath.row] jugador2]];
    
    cell.imagenPhoto.image=imagen.image;
    
    
    
    
    
    
    // Configure the cell...
    
    return cell;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [HIDCeldaEstadisticaCell cellHeight];
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
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
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

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

#pragma mark - Eventos botones
-(void) pulsarBotonActualizar:(id) sender{
    NSLog(@"update");
    
    
    UIActivityIndicatorView *indicador=[[UIActivityIndicatorView alloc]init];
    indicador.center=self.view.center;
    [indicador setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleWhiteLarge];
    
    [indicador setColor:[UIColor redColor]];
    [self.view addSubview:indicador];
    [indicador startAnimating];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        UIAlertView *alerta=[[UIAlertView alloc]initWithTitle:@"Estadisticas"
                                                      message:@"Datos Actualizados"
                                                     delegate:nil
                                            cancelButtonTitle:nil
                                            otherButtonTitles:@"OK", nil];
        [alerta show];
        [indicador stopAnimating];
    });
    
}

-(void) pulsarBotonGrafica:(id) sender{
    NSLog(@"grafica");
    
}

@end
