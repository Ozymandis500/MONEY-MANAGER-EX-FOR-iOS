//
//  DBTableBase.h
//  MoneyManagerEx
//
//  Created by taotao on 2020/4/7.
//  Copyright © 2020 taotao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DBTableBase : NSObject

+ (NSString *)createTableSQL;
+ (NSString *)createIndexSQL;
+ (NSArray *)defaultData;

@end

NS_ASSUME_NONNULL_END
