//
//  ViewController.m
//  Ejercicio Previo
//
//  Created by Colart on 12/11/2019.
//  Copyright © 2019 jesdomtri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *LabelPrimera;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.LabelPrimera.text=@"Primera";
}


@end
