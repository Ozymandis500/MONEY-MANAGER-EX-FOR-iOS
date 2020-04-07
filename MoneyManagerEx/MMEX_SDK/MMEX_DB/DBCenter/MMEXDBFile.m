//
//  MMEXDBFile.m
//  MoneyManagerEx
//
//  Created by taotao on 2020/4/4.
//  Copyright © 2020 taotao. All rights reserved.
//

#import "MMEXDBFile.h"

static NSString *dbDicFolder;
static NSString *dbPath = @"/DBS/";
static NSString *defaultDBName = @"defaultDB";

@implementation MMEXDBFile

+ (NSURL *)documentsDirectory {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

+ (NSURL *)defaultDBFileURL {
    return [[self documentsDirectory] URLByAppendingPathComponent:[dbPath stringByAppendingString:defaultDBName]];
}

+ (NSString *)defaultDBFileName {
    return defaultDBName;
}

+ (NSURL *)DBFolderURL {
    return [[self documentsDirectory] URLByAppendingPathComponent:dbPath];
}

+ (NSURL *)dbPathURL: (NSString *)dbName {
    return [[self documentsDirectory] URLByAppendingPathComponent:dbName];
}

+ (BOOL)dbExist: (NSString *)dbName {
    NSURL *dbUrl = [self dbPathURL:dbName];
    NSString *path = [dbUrl path];
    
    if (path && [[NSFileManager defaultManager] fileExistsAtPath:path]) {
        return true;
    }
    
    return false;
}

+ (BOOL)dbExistInPath: (NSURL *)dbpath {
    NSString *path = [dbpath path];
    if (path && [[NSFileManager defaultManager] fileExistsAtPath:path]) {
        return true;
    }
    
    return false;
}

@end
