//
//  SubCategory.h
//  MoneyManagerEx
//
//  Created by taotao on 2020/4/7.
//  Copyright © 2020 taotao. All rights reserved.
//

#import "DBTableBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface SubCategory : DBTableBase

@property (nonatomic, assign)  NSInteger   subCategoryId;
@property (nonatomic, assign)  NSInteger   categoryId;
@property (nonnull, nonatomic, copy)  NSString    *subCategName;

+(instancetype)objectWidthCategoryId: (NSInteger)categoryId subName:(NSString *)subName;

@end

NS_ASSUME_NONNULL_END
