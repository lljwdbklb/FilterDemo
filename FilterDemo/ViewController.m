//
//  ViewController.m
//  FilterDemo
//
//  Created by shiyong.Tan on 15/11/20.
//  Copyright © 2015年 WhoJun. All rights reserved.
//

#import "ViewController.h"

@implementation UIViewController(ViewController)
- (ViewController *)viewController {
    return [self.navigationController.viewControllers firstObject];
}
@end

@interface ViewController ()@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *names = @[@"bread",@"Beef jerky",@"Pancakes",@"Ham",@"Gruel"];
    self.foods = [NSMutableArray array];
    
    for (int i = 0; i < 10; i++) {
        Food *food = [[Food alloc]init];
        food.name = [NSString stringWithFormat:@"%@%d",names[arc4random_uniform((u_int32_t)names.count)],i];
        food.monry = @(arc4random_uniform(1000));
        [self.foods addObject:food];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
