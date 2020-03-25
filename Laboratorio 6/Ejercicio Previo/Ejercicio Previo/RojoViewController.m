//
//  ViewController.m
//  Ejercicio Previo
//
//  Created by Colart on 19/11/2019.
//  Copyright © 2019 jesdomtri. All rights reserved.
//

#import "RojoViewController.h"
#import "VerdeViewController.h"

@interface RojoViewController ()

@end

@implementation RojoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    VerdeViewController *verdeViewController = segue.destinationViewController;
    
    if ([segue.identifier isEqualToString:@"SegueOne"]) {
        verdeViewController.textLabel = @"Número 1";
    }else{
        verdeViewController.textLabel = @"Número 2";
    }
}

@end
