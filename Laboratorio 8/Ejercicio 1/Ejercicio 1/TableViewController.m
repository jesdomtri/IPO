#import "TableViewController.h"

@interface TableViewController ()

@property (nonatomic,retain) NSMutableArray *dioses;
@property (nonatomic, copy) NSDictionary *dictionary;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"Dioses2" ofType:@"plist"];
    self.dictionary = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    
    self.dioses = [NSMutableArray arrayWithCapacity:20];
    [self.dioses addObjectsFromArray:self.dictionary[self.tipo]];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dioses count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath  {
    static NSString *CellIdentifier = @"id";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = self.dioses[indexPath.row];
    return cell;
}

@end
