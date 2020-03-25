//
//  ViewController.m
//  Ejercicio 3
//
//  Created by Colart on 12/11/2019.
//  Copyright © 2019 jesdomtri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *upLeftCaract;
- (IBAction)upLeft:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *upRightCaract;
- (IBAction)upRight:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *downLeftCaract;
- (IBAction)downLeft:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *downRightCaract;
- (IBAction)downRight:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.upLeftCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.upRightCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.downLeftCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.downRightCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
}


- (IBAction)upLeft:(UIButton *)sender {
    self.upLeftCaract.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
    self.upRightCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.downLeftCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.downRightCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
}

- (IBAction)upRight:(UIButton *)sender {
    self.upLeftCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.upRightCaract.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
    self.downLeftCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.downRightCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
}

- (IBAction)downLeft:(UIButton *)sender {
    self.upLeftCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.upRightCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.downLeftCaract.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
    self.downRightCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
}

- (IBAction)downRight:(UIButton *)sender {
    self.upLeftCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.upRightCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.downLeftCaract.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0f];
    self.downRightCaract.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1.0f];
}
@end
