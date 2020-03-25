//
//  MarcialViewController.m
//  Lab7
//
//  Created by practica on 26/11/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "MarcialViewController.h"

@interface MarcialViewController ()
- (IBAction)boton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation MarcialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)boton:(UIButton *)sender {
    self.label.text = @"Siente verdadero dolor el que lo sufre sin testigos";
}
@end
