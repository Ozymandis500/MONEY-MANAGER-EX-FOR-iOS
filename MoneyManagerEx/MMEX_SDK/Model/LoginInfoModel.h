//
//  LoginInfo.h
//  MoneyManagerEx
//
//  Created by taotao on 16/7/9.
//  Copyright © 2016年 taotao. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UserInfoModel;

@interface LoginInfoModel : NSObject

@property (nonatomic, strong) NSString *account;
@property (nonatomic, strong) NSString *password;
@property (nonatomic, strong) NSDate *logintime;
@property (nonatomic, strong) NSString *token;
@property (nonatomic, strong) UserInfoModel *user;

@end