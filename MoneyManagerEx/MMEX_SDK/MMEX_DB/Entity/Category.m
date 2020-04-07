//
//  Category.m
//  MoneyManagerEx
//
//  Created by taotao on 2020/4/7.
//  Copyright © 2020 taotao. All rights reserved.
//

#import "Category.h"

@implementation Category


+ (NSString *)createSql {
    return @"CREATE TABLE CATEGORY_V1(CATEGID integer primary key, CATEGNAME TEXT COLLATE NOCASE NOT NULL UNIQUE)";
}

+ (NSString *)createIndexSQL {
    return @"CREATE INDEX IF NOT EXISTS IDX_CATEGORY_CATEGNAME ON CATEGORY_V1(CATEGNAME)";
}

+ (NSArray *)defaultData {
    return  [NSArray arrayWithObjects: NSLocalizedString(@"Bills", nil),
             NSLocalizedString(@"Food", nil),
             NSLocalizedString(@"Leisure", nil),
             NSLocalizedString(@"Automobile", nil),
             NSLocalizedString(@"Education", nil),
             NSLocalizedString(@"Homeneeds", nil),
             NSLocalizedString(@"Healthcare", nil),
             NSLocalizedString(@"Insurance", nil),
             NSLocalizedString(@"Vacation", nil),
             NSLocalizedString(@"Taxes", nil),
             NSLocalizedString(@"Miscellaneous", nil),
             NSLocalizedString(@"Gifts", nil),
             NSLocalizedString(@"Income", nil),
             NSLocalizedString(@"Other Income", nil),
             NSLocalizedString(@"Other Expenses", nil),
             NSLocalizedString(@"Transfer", nil), nil];
}

@end
