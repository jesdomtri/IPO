//
//  ViewController.m
//  Ejercicio 2
//
//  Created by practica on 26/11/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (nonatomic, copy) NSArray *dataPicker;
@property (nonatomic, copy) NSArray *dataPicker2;
@property (nonatomic, copy) NSArray *dataPicker3;
@property (nonatomic, copy) NSDictionary *dictionaryData;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *plistPath=[[NSBundle mainBundle] pathForResource:@"PrimeraDeclinacion" ofType:@"plist"];
    self.dictionaryData = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    self.dataPicker2 = @[@"Singular", @"Plural"];
    self.dataPicker = self.dictionaryData.allKeys;
    // Nominativo, Vocativo, ....
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *) pickerView{
    return 3;
}

- (NSInteger) pickerView:(UIPickerView *) picker numberOfRowsInComponent:(NSInteger)component{
    NSInteger resultado = 0;
    if (component==0) {
        resultado = [self.dataPicker count];
    }else{
        resultado = 2;
    }
    return resultado;
}

- (NSString *) pickerView:(UIPickerView *) pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    NSString *resultado = @"";
    if (component==0) {
        resultado = self.dataPicker[row];
    }
    if (component==1) {
        if (row==0) {resultado = @"Singular";}
        if (row==1) {resultado = @"Plural";}
    }
    if (component==2) {
        NSInteger caso = [pickerView selectedRowInComponent:0];
        NSInteger numero = [pickerView selectedRowInComponent:1];
        resultado = self.dictionaryData[self.dataPicker[caso]][self.dataPicker2[numero]];
    }
    
    return resultado;
}

- (void) pickerView:(UIPickerView *) pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (component==0) {
        [self.pickerView reloadComponent:2];
    }
    if (component==1) {
        [self.pickerView reloadComponent:2];
    }
    if (component==2) {
        [self.pickerView reloadComponent:2];
    }
}

@end
