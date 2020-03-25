//
//  SegundoViewController.m
//  Ejercicio 3
//
//  Created by Colart on 12/11/2019.
//  Copyright © 2019 jesdomtri. All rights reserved.
//

#import "SegundoViewController.h"

@interface SegundoViewController ()
- (IBAction)arriba:(UIButton *)sender;
- (IBAction)abajo:(UIButton *)sender;
- (IBAction)izquierda:(UIButton *)sender;
- (IBAction)derecha:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *primero;
@property (weak, nonatomic) IBOutlet UILabel *segundo;
@property (weak, nonatomic) IBOutlet UILabel *tercero;
@property (weak, nonatomic) IBOutlet UILabel *cuarto;
@property (weak, nonatomic) IBOutlet UILabel *quinto;
@property (weak, nonatomic) IBOutlet UILabel *sexto;
@property (weak, nonatomic) IBOutlet UILabel *septimo;
@property (weak, nonatomic) IBOutlet UILabel *octavo;
@property (weak, nonatomic) IBOutlet UILabel *noveno;
@property NSNumber *contador;

@end

@implementation SegundoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.primero.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.segundo.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.tercero.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.cuarto.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.quinto.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
    self.sexto.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.septimo.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.octavo.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.noveno.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.contador = [NSNumber numberWithInt:5];
}

- (IBAction)arriba:(UIButton *)sender {
    self.primero.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.segundo.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.tercero.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.cuarto.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.quinto.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.sexto.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.septimo.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.octavo.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.noveno.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    switch ([self.contador intValue]) {
        case 4:
            self.primero.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:1];
            break;
            
        case 5:
            self.segundo.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:2];
            break;
            
        case 6:
            self.tercero.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:3];
            break;
            
        case 7:
            self.cuarto.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:4];
            break;
            
        case 8:
            self.quinto.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:5];
            break;
            
        case 9:
            self.sexto.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:6];
            break;
        default:
            break;
    }
}

- (IBAction)abajo:(UIButton *)sender {
    self.primero.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.segundo.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.tercero.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.cuarto.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.quinto.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.sexto.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.septimo.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.octavo.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.noveno.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    switch([self.contador intValue]){
        case 1:
            self.cuarto.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:4];
            break;
            
        case 2:
            self.quinto.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:5];
            break;
            
        case 3:
            self.sexto.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:6];
            break;
            
        case 4:
            self.septimo.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:7];
            break;
            
        case 5:
            self.octavo.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:8];
            break;
            
        case 6:
            self.noveno.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:9];
            break;
        default:
            break;
    }
}

- (IBAction)izquierda:(UIButton *)sender {
    self.primero.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.segundo.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.tercero.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.cuarto.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.quinto.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.sexto.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.septimo.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.octavo.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.noveno.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    switch ([self.contador intValue]) {
        case 2:
            self.primero.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:1];
            break;
            
        case 3:
            self.segundo.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:2];
            break;
            
        case 5:
            self.cuarto.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:4];
            break;
            
        case 6:
            self.quinto.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:5];
            break;
            
        case 8:
            self.septimo.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:7];
            break;
            
        case 9:
            self.octavo.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:8];
            break;
        default:
            break;
    }
}

- (IBAction)derecha:(UIButton *)sender {
    self.primero.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.segundo.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.tercero.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.cuarto.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.quinto.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.sexto.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.septimo.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.octavo.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.noveno.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    switch ([self.contador intValue]) {
        case 1:
            self.segundo.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:2];
            break;
            
        case 2:
            self.tercero.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:3];
            break;
            
        case 4:
            self.quinto.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:5];
            break;
            
        case 5:
            self.sexto.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:6];
            break;
            
        case 7:
            self.octavo.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:8];
            break;
            
        case 8:
            self.noveno.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
            self.contador = [NSNumber numberWithInt:9];
            break;
        default:
            break;
    }
}
@end
