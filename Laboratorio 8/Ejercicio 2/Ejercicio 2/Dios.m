#import "Dios.h"

@interface Dios ()
@property (weak, nonatomic) IBOutlet UIImageView *imagen;
@property (weak, nonatomic) IBOutlet UILabel *tipoDivinidad;
@property (weak, nonatomic) IBOutlet UILabel *atributo;
@property (weak, nonatomic) IBOutlet UINavigationItem *titulo;

@end

@implementation Dios

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tipoDivinidad.text = self.atributosDios[1];
    self.atributo.text = self.atributosDios[2];
    self.imagen.image = [UIImage imageNamed:self.nombreDios];
    self.titulo.title = self.nombreDios;
}

@end
