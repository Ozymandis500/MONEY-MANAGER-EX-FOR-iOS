//
//  Category.h
//  MoneyManagerEx
//
//  Created by taotao on 2020/4/7.
//  Copyright © 2020 taotao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBTableBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface Category : DBTableBase

@property (nonatomic, assign)  NSInteger   categoryId;
@property (nonnull, nonatomic, copy)    NSString    *categName;

@end

NS_ASSUME_NONNULL_END
