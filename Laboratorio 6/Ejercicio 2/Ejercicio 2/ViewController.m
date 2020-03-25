//
//  ViewController.m
//  Ejercicio 2
//
//  Created by practica on 19/11/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "ViewController.h"
#import "SegundoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    SegundoViewController *segundo =segue.destinationViewController;
}


@end
