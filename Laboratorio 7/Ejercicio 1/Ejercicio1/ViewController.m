//
//  ViewController.m
//  Lab7
//
//  Created by practica on 26/11/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)boton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)boton:(UIButton *)sender {
    self.label.text = @"La ignorancia es causa del temor";
}
@end
