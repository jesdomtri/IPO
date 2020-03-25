//
//  ViewController.m
//  Ejercicio 2
//
//  Created by practica on 12/11/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imagen;
@property (nonatomic,copy) NSArray *datapickerView;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.imagen.image = [UIImage imageNamed:@"FelipeIII"];
    self.datapickerView=@[@"FelipeIII",@"FelipeIV",@"CarlosII"];
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *) pickerView{
    return 1;
}

- (NSInteger) pickerView:(UIPickerView *) picker numberOfRowsInComponent:(NSInteger)component{
    return [self.datapickerView count];
}

- (NSString *) pickerView:(UIPickerView *) pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    self.imagen.image = [UIImage imageNamed:self.datapickerView[row]];
    return self.datapickerView[row];
}

@end
