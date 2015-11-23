//
//  NSArray+WJFilter.h
//  FilterDemo
//
//  Created by shiyong.Tan on 15/11/23.
//  Copyright © 2015年 WhoJun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray<__covariant ObjectType> (WJFilter)
- (NSArray<ObjectType>* _Nullable)wj_findArrayUsingWithFormat:(NSString * _Nonnull)format, ...;
- (NSArray<ObjectType>* _Nullable)wj_findArrayUsingWithFormat:(NSString * _Nonnull)format arguments:(va_list)argList;
- (NSArray<ObjectType>* _Nullable)wj_findArrayUsingWithFormat:(NSString * _Nonnull)format argumentsArray:(nullable NSArray *)argumentsArray;

- (NSArray <ObjectType>* _Nullable)wj_sortArrayUsingWithKey:(NSString * _Nonnull)key ascending:(BOOL)ascending;
@end

@interface NSMutableArray<ObjectType> (WJFilter)
- (void)wj_findUsingWithFormat:(NSString * _Nonnull)format, ...;
- (void)wj_findUsingWithFormat:(NSString * _Nonnull)format arguments:(va_list)argList;
- (void)wj_findUsingWithFormat:(NSString * _Nonnull)format argumentsArray:(nullable NSArray *)argumentsArray;

- (void)wj_sortUsingWithKey:(NSString * _Nonnull)key ascending:(BOOL)ascending;
@end