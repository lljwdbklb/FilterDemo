//
//  KVCController.m
//  FilterDemo
//
//  Created by shiyong.Tan on 15/11/20.
//  Copyright © 2015年 WhoJun. All rights reserved.
//

#import "KVCController.h"

@interface KVCController ()
@property (weak, nonatomic) IBOutlet UILabel *minLabel;
@property (weak, nonatomic) IBOutlet UILabel *maxLabel;
@property (weak, nonatomic) IBOutlet UILabel *avgLabel;
@property (weak, nonatomic) IBOutlet UILabel *sumLabel;
@end

@implementation KVCController
- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray <Food *>*foods = self.viewController.foods;
    self.minLabel.text = StringNew([foods valueForKeyPath:@"@min.monry"]);
    self.maxLabel.text = StringNew([foods valueForKeyPath:@"@max.monry"]);
    self.avgLabel.text = StringNew([foods valueForKeyPath:@"@avg.monry"]);
    self.sumLabel.text = StringNew([foods valueForKeyPath:@"@sum.monry"]);
}
@end
