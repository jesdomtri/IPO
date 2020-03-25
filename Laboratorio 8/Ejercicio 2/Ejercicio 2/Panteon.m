//
//  Panteon.m
//  Ejercicio 2
//
//  Created by Colart on 09/12/2019.
//  Copyright © 2019 jesdomtri. All rights reserved.
//

#import "Panteon.h"
#import "Dios.h"

@interface Panteon ()

@property (nonatomic,retain) NSMutableArray *dioses;
@property (nonatomic, copy) NSDictionary *dictionary;

@end

@implementation Panteon

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"DiosesDelOlimpo" ofType:@"plist"];
    self.dictionary = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    
    self.dioses = [NSMutableArray arrayWithCapacity:20];
    [self.dioses addObjectsFromArray:[self.dictionary allKeys]];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)sender{
    Dios *dios = segue.destinationViewController;
    dios.nombreDios = sender.textLabel.text;
    dios.atributosDios = self.dictionary[sender.textLabel.text];
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
    cell.detailTextLabel.text = self.dictionary[self.dioses[indexPath.row]][0];
    return cell;
}

@end
