//
//  BankAccountEditViewController.h
//  MoneyManagerEx
//
//  Created by taotao on 16/9/20.
//  Copyright © 2016年 taotao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AccountModel;

@interface BankAccountEditViewController : UIViewController

- (instancetype)initWithAccount:(AccountModel *)account;

@end
