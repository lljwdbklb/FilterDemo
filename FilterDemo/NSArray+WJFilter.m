//
//  NSArray+WJFilter.m
//  FilterDemo
//
//  Created by shiyong.Tan on 15/11/23.
//  Copyright © 2015年 WhoJun. All rights reserved.
//

#import "NSArray+WJFilter.h"

@implementation NSArray (WJFilter)

- (NSArray *)wj_findArrayUsingWithFormat:(NSString *)format, ... {
    va_list params;
    va_start(params,format);
    NSPredicate *predicate = [NSPredicate predicateWithFormat:format arguments:params];
    va_end(params);
    return [self filteredArrayUsingPredicate:predicate];
}

- (NSArray*)wj_findArrayUsingWithFormat:(NSString * )format arguments:(va_list)argList {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:format arguments:argList];
    return [self filteredArrayUsingPredicate:predicate];
}

- (NSArray *)wj_findArrayUsingWithFormat:(NSString * )format argumentsArray:(NSArray *)argumentsArray {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:format argumentArray:argumentsArray];
    return [self filteredArrayUsingPredicate:predicate];
}

- (NSArray *)wj_sortArrayUsingWithKey:(NSString *)key ascending:(BOOL)ascending {
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:key ascending:ascending];
    return [self sortedArrayUsingDescriptors:@[sortDescriptor]];
}
@end


@implementation NSMutableArray (WJFilter)
- (void)wj_findUsingWithFormat:(NSString * _Nonnull)format, ... {
    
    va_list params;
    va_start(params,format);
    NSPredicate *predicate = [NSPredicate predicateWithFormat:format arguments:params];
    va_end(params);
    [self filterUsingPredicate:predicate];
}

- (void)wj_findUsingWithFormat:(NSString * _Nonnull)format arguments:(va_list)argList {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:format arguments:argList];
    [self filterUsingPredicate:predicate];
}

- (void)wj_findUsingWithFormat:(NSString * _Nonnull)format argumentsArray:(nullable NSArray *)argumentsArray {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:format argumentArray:argumentsArray];
    [self filterUsingPredicate:predicate];
}

- (void)wj_sortUsingWithKey:(NSString * _Nonnull)key ascending:(BOOL)ascending {
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:key ascending:ascending];
    [self sortUsingDescriptors:@[sortDescriptor]];
}
@end
