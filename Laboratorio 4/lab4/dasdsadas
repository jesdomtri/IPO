//
//  ViewController.m
//  lab4
//
//  Created by practica on 5/11/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, copy) NSArray *dataValues;
@property (nonatomic, copy) NSArray *dataKeys;
@property (nonatomic, copy) NSDictionary *data;
- (IBAction)boton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *etiqueta;

@property (weak, nonatomic) IBOutlet UIPickerView *pi;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //_dataPicker=@[@"Albéniz",@"Falla",@"Granados",@"Turina"];
    NSString *ruta = [[NSBundle mainBundle] pathForResource:@"2 Población Andalucia" ofType:@"plist"];
    _data = [NSDictionary dictionaryWithContentsOfFile:ruta];
    _dataKeys = [self.data allKeys];
}



- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *) pickerView{
    return 1;
}
- (NSInteger) pickerView:(UIPickerView *) picker
 numberOfRowsInComponent:(NSInteger) component{
    return [_dataKeys count];
}

- (NSString *) pickerView:(UIPickerView *) pickerView
titleForRow:(NSInteger) row
forComponent:(NSInteger) component{
    return _dataKeys[row];
}

- (IBAction)boton:(UIButton *)sender {
    NSInteger fila = [self.pi selectedRowInComponent:0];
    NSString *resultado = self.data.allValues[fila];
    self.etiqueta.text = resultado;
}
@end
