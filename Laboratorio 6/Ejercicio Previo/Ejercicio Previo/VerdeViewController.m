//
//  VerdeViewController.m
//  Ejercicio Previo
//
//  Created by Colart on 19/11/2019.
//  Copyright © 2019 jesdomtri. All rights reserved.
//

#import "VerdeViewController.h"

@interface VerdeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation VerdeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = self.textLabel;
}



@end
