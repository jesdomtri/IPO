//
//  SegundoViewController.m
//  Ejercicio 1
//
//  Created by practica on 12/11/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "SegundoViewController.h"

@interface SegundoViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)selector:(UISegmentedControl *)sender;

@end

@implementation SegundoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.backgroundColor=[UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0f];
}

- (IBAction)selector:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex==0) {
        self.label.backgroundColor=[UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0f];
    } else {
        if (sender.selectedSegmentIndex==1) {
            self.label.backgroundColor=[UIColor colorWithRed:0.0 green:1.0 blue:0.0 alpha:1.0f];
        } else {
            self.label.backgroundColor=[UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:1.0f];
        }
    }
    
}
@end
