//
//  ViewController.m
//  Lab3
//
//  Created by practica on 29/10/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)muestraImagen:(UISegmentedControl *)sender;

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)muestraImagen:(UISegmentedControl *)sender{
    if(sender.selectedSegmentIndex == 0){
        self.imageView.image = [UIImage imageNamed:@"CarlosII"];
    }else{
        if(sender.selectedSegmentIndex==1){
            self.imageView.image = [UIImage imageNamed:@"FelipeIV"];
        }
        else{
            self.imageView.image = [UIImage imageNamed:@"FelipeIII"];
        }
    }
    
}

@end
