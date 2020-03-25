//
//  SegundoViewController.m
//  Ejercicio 3
//
//  Created by practica on 19/11/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "SegundoViewController.h"

@interface SegundoViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imagen;
@property (weak, nonatomic) IBOutlet UILabel *fecha;

@end

@implementation SegundoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fecha.text = self.textoFecha;
    self.imagen.image = [UIImage imageNamed:self.textoPoeta];
}

@end
