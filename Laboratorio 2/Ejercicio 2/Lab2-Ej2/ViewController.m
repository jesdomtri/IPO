//
//  ViewController.m
//  Lab2-Ej2
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


- (IBAction)blanco:(UIButton *)sender {
    self.view.backgroundColor = [UIColor whiteColor];
    //[ setBackgroundColor: [UIColor whiteColor]];
}

- (IBAction)verde:(UIButton *)sender {
    self.view.backgroundColor = [UIColor greenColor];
    //[self setBackgroundColor: [UIColor greenColor]];
}
@end
