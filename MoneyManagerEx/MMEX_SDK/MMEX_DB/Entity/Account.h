//
//  Account.h
//  MoneyManagerEx
//
//  Created by taotao on 16/7/6.
//  Copyright © 2016年 taotao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBTableBase.h"

//@class Currency, Merchant, Transaction, UserInfo;

NS_ASSUME_NONNULL_BEGIN

@interface Account : DBTableBase

@property (nonatomic, assign)  NSInteger   accountId;
@property (nonnull, nonatomic, copy)    NSString    *accountName;
@property (nonnull, nonatomic, copy)    NSString    *accountType;
@property (nullable, nonatomic, copy)   NSString *accountNum;
@property (nonnull, nonatomic, copy)             NSString *status;
@property (nullable, nonatomic, copy)   NSString *notes;
@property (nullable, nonatomic, copy)   NSString *heldAt;
@property (nullable, nonatomic, copy)   NSString *website;
@property (nullable, nonatomic, copy)   NSString *contactInfo;
@property (nullable, nonatomic, strong) NSNumber *initialbal;
@property (nonnull, nonatomic, copy)             NSString  *favoriteAcct;
@property (nonatomic, assign)           NSInteger currencyId;
@property (nonatomic, assign)           NSInteger statementlocked;
@property (nullable, nonatomic, copy)   NSString *statementDate;
@property (nullable, nonatomic, strong) NSNumber *minimumBalance;
@property (nullable, nonatomic, strong) NSNumber *creditlimit;
@property (nullable, nonatomic, strong) NSNumber *interestRate;
@property (nullable, nonatomic, copy)   NSString *paymentDueDate;
@property (nullable, nonatomic, strong) NSString *minimumPayment;


@end

NS_ASSUME_NONNULL_END
