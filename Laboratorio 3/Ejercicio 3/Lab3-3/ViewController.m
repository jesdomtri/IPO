//
//  ViewController.m
//  Lab3-3
//
//  Created by practica on 29/10/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imagen;
- (IBAction)boton:(UIButton *)sender;
- (IBAction)slider:(UISlider *)sender;
@property BOOL esIsabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imagen.alpha = 0.5;
    self.esIsabel = TRUE;

}


- (IBAction)boton:(UIButton *)sender {
    
    if(self.esIsabel == FALSE){
        self.imagen.image = [UIImage imageNamed:@"Isabel"];
        [sender setTitle:@"Pulsa para ver Fernando" forState: UIControlStateNormal];
        self.esIsabel = TRUE;
    }else{
        self.imagen.image = [UIImage imageNamed:@"Fernando"];
        [sender setTitle:@"Pulsa para ver Isabel" forState: UIControlStateNormal];
        self.esIsabel = FALSE;
    }
}

- (IBAction)slider:(UISlider *)sender {
    self.imagen.alpha = [sender value];
}

@end
