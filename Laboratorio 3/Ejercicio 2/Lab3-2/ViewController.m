//
//  ViewController.m
//  Lab3-2
//
//  Created by practica on 29/10/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imagen;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imagen.animationImages = @[[UIImage imageNamed:@"Circulos001"],[UIImage imageNamed:@"Circulos002"],[UIImage imageNamed:@"Circulos003"],[UIImage imageNamed:@"Circulos004"],[UIImage imageNamed:@"Circulos005"],[UIImage imageNamed:@"Circulos006"],[UIImage imageNamed:@"Circulos007"],[UIImage imageNamed:@"Circulos008"]];
    
    self.imagen.animationDuration = 1;
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)boton:(UISwitch *)sender {
    
    if (sender.on){
        [self.imagen startAnimating];
    }else{
        [self.imagen stopAnimating];
    }
    
}
@end
