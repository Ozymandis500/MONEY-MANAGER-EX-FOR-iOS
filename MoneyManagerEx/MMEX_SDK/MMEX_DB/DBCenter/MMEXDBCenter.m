//
//  MMEXDBCenter.m
//  MoneyManagerEx
//
//  Created by taotao on 16/7/5.
//  Copyright © 2016年 taotao. All rights reserved.
//

#import "MMEXDBCenter.h"
#import <FMDB.h>
#import "MMEXDBFile.h"

#import "LoginRecord.h"
#import "Account.h"
#import "Transaction.h"
#import "Currency.h"
#import "Transaction.h"
#import "UserInfo.h"
#import "Contacts.h"
#import "Merchant.h"


static MMEXDBCenter *singletonDBCenter = nil;

@interface MMEXDBCenter ()

@property (nonatomic, strong) FMDatabase             *db;

@end

@implementation MMEXDBCenter

+ (instancetype)shareInstance
{
    if (singletonDBCenter == nil) {
        singletonDBCenter = [[MMEXDBCenter alloc] init];
    }
    
    return singletonDBCenter;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    if (singletonDBCenter == nil) {
        return [super allocWithZone:zone];
    }
    
    return singletonDBCenter;
}

+ (id)copyWithZone:(struct _NSZone *)zone
{
    return self;
}

#pragma mark - setup database

- (void)createDefaultDB
{
    NSURL *defaultPath = [MMEXDBFile defaultDBFileURL];
    if ([MMEXDBFile dbExistInPath: defaultPath]) {
        return;
    }
    
    _db = [FMDatabase databaseWithURL:defaultPath];
    if (![_db open]) {
        _db = nil;
    }
    [_db setShouldCacheStatements:YES];
}

- (void)changeToDB: (NSString *)dbname {
    if (self.db != nil) {
        [_db close];
    }
    
    self.db = [FMDatabase databaseWithURL:[MMEXDBFile dbPathURL:dbname]];
    if (![_db open]) {
        _db = nil;
        return;
    }
    [_db setShouldCacheStatements:YES];
}

- (void)closeDB
{
    [_db close];
}

#pragma mark - create tables


#pragma mark - LoginRecord

- (void)saveLoginInfo:(LoginInfoModel *)loginInfo
{
    if (nil == loginInfo || nil == loginInfo.account) {
        return;
    }
    
//    LoginRecord *loginRecord = [self _getLoginInfoByAccount:loginInfo.account inMoc:self.mainManagedObjectContext];
//    if (nil == loginRecord) {
//        loginRecord = [LoginRecord insertInManagedObjectContext:self.mainManagedObjectContext];
//    }
//
//    loginRecord.account = loginInfo.account;
//    loginRecord.password = loginInfo.password ? loginInfo.password : loginRecord.password;
//    loginRecord.token = loginInfo.token ? loginInfo.token : loginRecord.token;
//    loginRecord.logintime = loginInfo.logintime ? loginInfo.logintime : loginRecord.logintime;
//    if (loginInfo.user && loginInfo.user.uid) {
//        if (nil == loginRecord.user) {
//            loginRecord.user = [UserInfo insertInManagedObjectContext:self.mainManagedObjectContext];
//        }
//        loginRecord.user.uid = loginInfo.user.uid;
//        loginRecord.user.name = loginInfo.user.name ? loginInfo.user.name : loginRecord.user.name;
//        loginRecord.user.gender = loginInfo.user.gender ? loginInfo.user.gender : loginRecord.user.gender;
//        loginRecord.user.avatar = loginInfo.user.avatar ? loginInfo.user.avatar : loginRecord.user.avatar;
//        loginRecord.user.email = loginInfo.user.email ? loginInfo.user.email : loginRecord.user.email;
//        loginRecord.user.mobile = loginInfo.user.mobile ? loginInfo.user.mobile : loginRecord.user.mobile;
//        loginRecord.user.identification = loginInfo.user.identification ? loginInfo.user.identification : loginRecord.user.identification;
//        loginRecord.user.district = loginInfo.user.district ? loginInfo.user.district : loginRecord.user.district;
//        loginRecord.user.sign = loginInfo.user.sign ? loginInfo.user.sign : loginRecord.user.sign;
//    }
    
}

- (LoginRecord *)_getLoginInfoByAccount:(NSString *)account
{
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"account == %@", account];
//    NSEntityDescription *loginDes = [LoginRecord entityDesInManagedObjectContext:moc];
//    NSArray *result = [self fetchRequest:loginDes predicate:predicate sort:nil fetchLimit:1 inMoc:moc];
    
    return result.firstObject;
}

#pragma mark - UserInfo

#pragma mark - Account

#pragma mark - Contacts

#pragma mark - Currency

#pragma mark - Merchant

#pragma mark - Transaction

#pragma mark - TransactionType

#pragma mark - save


#pragma mark - private common method

@end
