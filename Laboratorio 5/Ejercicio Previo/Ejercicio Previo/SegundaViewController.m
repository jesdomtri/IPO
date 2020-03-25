//
//  SegundaViewController.m
//  Ejercicio Previo
//
//  Created by Colart on 12/11/2019.
//  Copyright © 2019 jesdomtri. All rights reserved.
//

#import "SegundaViewController.h"

@interface SegundaViewController ()
@property (weak, nonatomic) IBOutlet UILabel *SegundaLabel;

@end

@implementation SegundaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.SegundaLabel.text=@"Segunda";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
