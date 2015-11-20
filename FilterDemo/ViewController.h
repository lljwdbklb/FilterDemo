//
//  ViewController.h
//  FilterDemo
//
//  Created by shiyong.Tan on 15/11/20.
//  Copyright © 2015年 WhoJun. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Food;

@interface ViewController : UITableViewController
@property (strong, nonatomic) NSMutableArray<Food *> *foods;
@end

@interface UIViewController(ViewController)
@property (strong, nonatomic, readonly) ViewController *viewController;
@end

