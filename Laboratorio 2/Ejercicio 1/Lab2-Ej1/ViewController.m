//
//  ViewController.m
//  Lab2-Ej1
//
//  Created by practica on 22/10/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)buttonPressed:(UIButton *)sender {
    if (self.statusLabel.hidden == YES) {
        [sender setTitle:@"Ocultar texto" forState: UIControlStateNormal];
        self.statusLabel.hidden = NO;
    }else{
        self.statusLabel.hidden=YES;
        [sender setTitle:@"Mostrar texto" forState: UIControlStateNormal];
    }
    }
@end
