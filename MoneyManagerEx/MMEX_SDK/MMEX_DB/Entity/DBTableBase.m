//
//  DBTableBase.m
//  MoneyManagerEx
//
//  Created by taotao on 2020/4/7.
//  Copyright © 2020 taotao. All rights reserved.
//

#import "DBTableBase.h"

@implementation DBTableBase

+ (NSString *)createTableSQL {
    return @"";
}

+ (NSString *)createIndexSQL {
    return @"";
}

+ (NSArray *)defaultData {
    return nil;
}

@end
