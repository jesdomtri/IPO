//
//  ViewController.m
//  Ejercicio 1
//
//  Created by practica on 12/11/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *valor;
@property (weak, nonatomic) IBOutlet UILabel *porcentaje;
- (IBAction)boton:(UIButton *)sender;
- (IBAction)slider:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UISlider *sliderCaracteristicas;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.valor.text=@"25";
    self.porcentaje.text=@"50%";
}


- (IBAction)boton:(UIButton *)sender {
    self.valor.text=@"25";
    self.porcentaje.text=@"50%";
    self.sliderCaracteristicas.value=0.5;
}

- (IBAction)slider:(UISlider *)sender {
    self.valor.text=[NSString stringWithFormat:@"%2.0f",sender.value*100/2];
    self.porcentaje.text=[NSString stringWithFormat:@"%2.0f%%",sender.value*100];
}

@end
