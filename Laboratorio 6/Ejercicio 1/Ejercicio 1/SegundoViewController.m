//
//  SegundoViewController.m
//  Ejercicio 1
//
//  Created by practica on 19/11/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "SegundoViewController.h"

@interface SegundoViewController ()
@property (weak, nonatomic) IBOutlet UILabel *resultado;

@end

@implementation SegundoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resultado.text = self.texto;
}

@end
