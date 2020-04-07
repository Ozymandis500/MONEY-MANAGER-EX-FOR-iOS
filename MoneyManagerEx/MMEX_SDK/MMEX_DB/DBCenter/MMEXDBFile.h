//
//  MMEXDBFile.h
//  MoneyManagerEx
//
//  Created by taotao on 2020/4/4.
//  Copyright © 2020 taotao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MMEXDBFile : NSObject

+ (NSURL *)documentsDirectory;
+ (NSURL *)defaultDBFileURL;
+ (NSString *)defaultDBFileName;
+ (NSURL *)DBFolderURL;
+ (NSURL *)dbPathURL: (NSString *)dbName;
+ (BOOL)dbExist: (NSString *)dbName;
+ (BOOL)dbExistInPath: (NSURL *)dbpath;

@end

NS_ASSUME_NONNULL_END
