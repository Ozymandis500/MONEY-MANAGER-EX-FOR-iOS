//
//  Account.m
//  MoneyManagerEx
//
//  Created by taotao on 16/7/6.
//  Copyright © 2016年 taotao. All rights reserved.
//

#import "Account.h"
#import "Currency.h"
#import "Merchant.h"
#import "Transaction.h"
#import "UserInfo.h"

@implementation Account

// Insert code here to add functionality to your managed object subclass


+ (NSString *)createTableSQL {
    return @"CREATE TABLE ACCOUNTLIST_V1(ACCOUNTID integer primary key, ACCOUNTNAME TEXT COLLATE NOCASE NOT NULL UNIQUE, ACCOUNTTYPE TEXT NOT NULL /* Checking, Term, Investment, Credit Card */, ACCOUNTNUM TEXT, STATUS TEXT NOT NULL /* Open, Closed */, NOTES TEXT, HELDAT TEXT, WEBSITE TEXT, CONTACTINFO TEXT, ACCESSINFO TEXT, INITIALBAL numeric, FAVORITEACCT TEXT NOT NULL, CURRENCYID integer NOT NULL, STATEMENTLOCKED integer, STATEMENTDATE TEXT, MINIMUMBALANCE numeric, CREDITLIMIT numeric, INTERESTRATE numeric, PAYMENTDUEDATE text, MINIMUMPAYMENT numeric)";
}

+ (NSString *)createIndexSQL {
    return @"";
}

@end
