//
//  PredicateSearchDelegate.m
//  FilterDemo
//
//  Created by shiyong.Tan on 15/11/20.
//  Copyright © 2015年 WhoJun. All rights reserved.
//

#import "PredicateSearchDelegate.h"

@interface PredicateSearchDelegate ()
{
    NSTimer *_timer;
}
@property (copy, nonatomic) NSArray <Food *> *foods;

@end

@implementation PredicateSearchDelegate
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    [_timer invalidate];
    _timer = nil;
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.25 target:self selector:@selector(searchTimer:) userInfo:searchText repeats:NO];
}

- (void)searchTimer:(NSTimer *)timer {
    NSString *searchText = timer.userInfo;
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name LIKE %@",[NSString stringWithFormat:@"*%@*",searchText]];
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name CONTAINS[cd] %@",searchText];
//    NSArray *foods = [self.sources filteredArrayUsingPredicate:predicate];
    NSArray *foods = [self.sources wj_findArrayUsingWithFormat:@"name CONTAINS[cd] %@",searchText];
//    NSPredicate *between = [NSPredicate predicateWithFormat:@"monry BETWEEN{10,20}"];
//    NSString *regex =@"^1(3[0-9]|5[0-35-9]|8[025-9])\\d{8}$";//手机号
//    NSPredicate *regexTestMobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
//    BOOL isPhone = [regexTestMobile evaluateWithObject:@"13111111111"];
    self.foods = foods;
    [self.searchController.searchResultsTableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.foods.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    Food *food = self.foods[indexPath.row];
    cell.textLabel.text = food.name;
    cell.detailTextLabel.text = StringNew(food.monry);
    return cell;
}

@end
