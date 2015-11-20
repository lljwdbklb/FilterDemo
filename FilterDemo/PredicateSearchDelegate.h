//
//  PredicateSearchDelegate.h
//  FilterDemo
//
//  Created by shiyong.Tan on 15/11/20.
//  Copyright © 2015年 WhoJun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PredicateSearchDelegate : NSObject<UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UISearchDisplayController *searchController;
@property (copy, nonatomic, nonnull) NSArray <Food *>*sources;
@end
