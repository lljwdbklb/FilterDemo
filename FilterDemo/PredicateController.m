//
//  PredicateController.m
//  FilterDemo
//
//  Created by shiyong.Tan on 15/11/20.
//  Copyright © 2015年 WhoJun. All rights reserved.
//

#import "PredicateController.h"
#import "PredicateSearchDelegate.h"

@interface PredicateController ()
@property (strong, nonatomic) IBOutlet PredicateSearchDelegate *predicateDelegate;

@end

@implementation PredicateController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.predicateDelegate.sources = self.viewController.foods;
    
}
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
@end
