//
//  TableViewController.m
//  lab7
//
//  Created by practica on 3/12/19.
//  Copyright © 2019 practica. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@property (nonatomic, retain) NSMutableArray *dataTable;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataTable = [NSMutableArray arrayWithCapacity:100];
    for(NSInteger i=0; i<50; i++){
        [self.dataTable addObject:[NSString stringWithFormat:@"Dato %i",i]];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dataTable count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = nil;
    if((indexPath.row%2)==0)
        cellIdentifier = @"CeldaRoja";
    else
        cellIdentifier = @"CeldaBlanca";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.textLabel.text=self.dataTable[indexPath.row];
    return cell;
}

@end
