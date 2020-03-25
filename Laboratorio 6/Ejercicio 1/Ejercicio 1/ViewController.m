//
//  ViewController.m
//  Ejercicio 1
//
//  Created by practica on 19/11/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "ViewController.h"
#import "SegundoViewController.h"

@interface ViewController ()
- (IBAction)numArriba:(UISlider *)sender;
- (IBAction)numAbajo:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UILabel *num1;
@property (weak, nonatomic) IBOutlet UILabel *num2;
@property (weak, nonatomic) IBOutlet UISlider *valorArriba;
@property (weak, nonatomic) IBOutlet UISlider *valorAbajo;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.num1.text = @"50";
    self.num2.text = @"50";
}


- (IBAction)numArriba:(UISlider *)sender {
    self.num1.text = [NSString stringWithFormat:@"%2.0f",sender.value];
}

- (IBAction)numAbajo:(UISlider *)sender {
    self.num2.text = [NSString stringWithFormat:@"%2.0f",sender.value];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    SegundoViewController *segundoViewController = segue.destinationViewController;
    
    if ([segue.identifier isEqualToString:@"Suma"]) {
        float suma = self.valorArriba.value + self.valorAbajo.value;
        segundoViewController.texto = [NSString stringWithFormat:@"%2.0f",suma];
    } else {
        float multiplica = self.valorArriba.value * self.valorAbajo.value;
        segundoViewController.texto = [NSString stringWithFormat:@"%2.0f",multiplica];
    }
    
}

@end
