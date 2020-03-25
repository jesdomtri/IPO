//
//  ViewController.m
//  Ejercicio 3
//
//  Created by Colart on 22/10/2019.
//  Copyright © 2019 jesdomtri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.fondo.text = [NSString stringWithFormat:@"(0.5000,0.5000,0.5000)"];
}


- (IBAction)colores:(UISlider *)sender {
    UISlider *rojo = (UISlider*)[self.view viewWithTag:1];
    //[self.view addSubview:rojo];
    UISlider *verde = (UISlider*)[self.view viewWithTag:2];
    //[self.view addSubview:verde];
    UISlider *azul = (UISlider*)[self.view viewWithTag:3];
    //[self.view addSubview:azul];
    
    NSString *valorRojo;
    NSString *valorVerde;
    NSString *valorAzul;
    
    valorRojo = [NSString stringWithFormat:@"%f",rojo.value];
    valorVerde = [NSString stringWithFormat:@"%f",verde.value];
    valorAzul = [NSString stringWithFormat:@"%f",azul.value];
    
    self.fondo.text = [NSString stringWithFormat:@"(%@,%@,%@)", valorRojo, valorVerde, valorAzul];
    
    self.view.backgroundColor = [UIColor colorWithRed:rojo.value green:verde.value blue:azul.value alpha:1.0f];
    
}
@end
