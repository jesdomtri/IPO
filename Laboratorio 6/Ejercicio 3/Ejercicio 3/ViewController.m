//
//  ViewController.m
//  Ejercicio 3
//
//  Created by practica on 19/11/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "ViewController.h"
#import "SegundoViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (nonatomic, copy) NSDictionary *data;
@property (nonatomic, copy) NSArray *poetas;
- (IBAction)boton:(UIButton *)sender;

@property (nonatomic, copy) NSString *nombre;
@property (nonatomic, copy) NSString *fecha;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *ruta = [[NSBundle mainBundle] pathForResource:@"Poetas" ofType:@"plist"];
    self.data = [NSDictionary dictionaryWithContentsOfFile:ruta];
    NSLog( @"%@", self.data );
    self.poetas = @[@"Cervantes",@"Gongora",@"Lope de Vega",@"Quevedo",@"Calderon de la Barca"];
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *) pickerView{
    return 1;
}

- (NSInteger) pickerView:(UIPickerView *) picker numberOfRowsInComponent:(NSInteger)component{
    return [self.poetas count];
}

- (NSString *) pickerView:(UIPickerView *) pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return self.poetas[row];
}

- (IBAction)boton:(UIButton *)sender {
    NSInteger fila = [self.pickerView selectedRowInComponent:0];
    NSArray *objeto = self.data[[NSString stringWithFormat:@"Item %li", fila]];
    self.nombre = objeto[0];
    self.fecha = [NSString stringWithFormat:@"%@ - %@",objeto[1],objeto[2]];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    SegundoViewController *segundo =segue.destinationViewController;
    segundo.textoFecha = self.fecha;
    segundo.textoPoeta = self.nombre;
}

@end
