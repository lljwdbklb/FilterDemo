//
//  SortController.m
//  FilterDemo
//
//  Created by shiyong.Tan on 15/11/20.
//  Copyright © 2015年 WhoJun. All rights reserved.
//

#import "SortController.h"

@implementation SortController


#pragma mark - tableview
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.viewController.foods.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    Food *food = self.viewController.foods[indexPath.row];
    cell.textLabel.text = food.name;
    cell.detailTextLabel.text = StringNew(food.monry);
    return cell;
}

#pragma mark - Events
- (IBAction)sortChanged:(UISegmentedControl *)sender {
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"monry" ascending:!sender.selectedSegmentIndex];
    [self.viewController.foods sortUsingDescriptors:@[sortDescriptor]];
    [self.tableView reloadData];
}

@end
