//
//  SegundoViewController.m
//  Ejercicio 2
//
//  Created by practica on 12/11/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "SegundoViewController.h"

@interface SegundoViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UIImageView *imagen1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UIImageView *imagen2;
- (IBAction)boton:(UIButton *)sender;

@end

@implementation SegundoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imagen1.image = [UIImage imageNamed:@"CarlosV"];
    self.imagen2.image = [UIImage imageNamed:@"FelipeII"];
    self.label1.text = @"Carlos V";
    self.label2.text = @"Felipe II";
}

- (IBAction)boton:(UIButton *)sender {
    if ([self.label1.text isEqualToString:@"Carlos V"]) {
        self.imagen1.image = [UIImage imageNamed:@"FelipeII"];
        self.imagen2.image = [UIImage imageNamed:@"CarlosV"];
        self.label1.text = @"Felipe II";
        self.label2.text = @"Carlos V";
    } else {
        self.imagen1.image = [UIImage imageNamed:@"CarlosV"];
        self.imagen2.image = [UIImage imageNamed:@"FelipeII"];
        self.label1.text = @"Carlos V";
        self.label2.text = @"Felipe II";
    }
}

@end
