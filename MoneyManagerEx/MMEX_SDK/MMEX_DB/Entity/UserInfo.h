//
//  UserInfo.h
//  MoneyManagerEx
//
//  Created by taotao on 16/7/6.
//  Copyright © 2016年 taotao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBTableBase.h"

@class Account, Contacts, LoginRecord, Transaction;

NS_ASSUME_NONNULL_BEGIN

@interface UserInfo : DBTableBase

//@property (nullable, nonatomic, retain) NSString *avatar;
//@property (nullable, nonatomic, retain) NSString *district;
//@property (nullable, nonatomic, retain) NSString *email;
//@property (nullable, nonatomic, retain) NSNumber *gender;
//@property (nullable, nonatomic, retain) NSString *identification;
//@property (nullable, nonatomic, retain) NSString *letter;
//@property (nullable, nonatomic, retain) NSString *mobile;
//@property (nullable, nonatomic, retain) NSString *name;
//@property (nullable, nonatomic, retain) NSString *sign;
//@property (nullable, nonatomic, retain) NSNumber *uid;
//@property (nullable, nonatomic, retain) NSSet<Account *> *accounts;
//@property (nullable, nonatomic, retain) Contacts *contact;
//@property (nullable, nonatomic, retain) NSSet<Contacts *> *contacts;
//@property (nullable, nonatomic, retain) LoginRecord *loginUser;
//@property (nullable, nonatomic, retain) Transaction *transactions;

// Insert code here to declare functionality of your managed object subclass
+ (NSString*)entityName;

@end

NS_ASSUME_NONNULL_END
