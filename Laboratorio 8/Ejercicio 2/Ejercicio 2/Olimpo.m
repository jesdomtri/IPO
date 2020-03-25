#import "Olimpo.h"

@interface Olimpo ()
@property (weak, nonatomic) IBOutlet UILabel *extra;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmento;
- (IBAction)cambiarExtra:(UISegmentedControl *)sender;

@end

@implementation Olimpo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.extra.text = @"2917 m";
}

- (IBAction)cambiarExtra:(UISegmentedControl *)sender {
    if (self.segmento.selectedSegmentIndex == 0) {
        self.extra.text = @"2917 m";
    } else {
        self.extra.text = @"Grecia";
    }
}
@end
