#import "StaticTableViewController.h"
#import "TableViewController.h"

@interface StaticTableViewController ()

@end

@implementation StaticTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    TableViewController *tableViewController = segue.destinationViewController;
    
    if ([segue.identifier isEqualToString:@"Griego"]) {
        tableViewController.tipo = @"Griego";
    }else if ([segue.identifier isEqualToString:@"Romano"]){
        tableViewController.tipo = @"Romano";
    }else if ([segue.identifier isEqualToString:@"Azteca"]){
        tableViewController.tipo = @"Azteca";
    }else if ([segue.identifier isEqualToString:@"Inca"]){
        tableViewController.tipo = @"Inca";
    }else{
        tableViewController.tipo = @"Egipcio";
    }
}
/*
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}
*/
@end
