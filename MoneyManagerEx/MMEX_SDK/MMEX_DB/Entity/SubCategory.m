//
//  SubCategory.m
//  MoneyManagerEx
//
//  Created by taotao on 2020/4/7.
//  Copyright © 2020 taotao. All rights reserved.
//

#import "SubCategory.h"

@implementation SubCategory

+(instancetype)objectWidthCategoryId: (NSInteger)categoryId subName:(NSString *)subName {
    SubCategory *subCategory = [[SubCategory alloc] init];
    subCategory.categoryId = categoryId;
    subCategory.subCategName = subName;
    return subCategory;
}

+ (NSString *)createSql {
    return @"CREATE TABLE SUBCATEGORY_V1(SUBCATEGID integer primary key, SUBCATEGNAME TEXT COLLATE NOCASE NOT NULL, CATEGID integer NOT NULL, UNIQUE(CATEGID, SUBCATEGNAME))";
}

+ (NSString *)createIndexSQL {
    return @"CREATE INDEX IF NOT EXISTS IDX_SUBCATEGORY_CATEGID ON SUBCATEGORY_V1(CATEGID)";
}


+ (NSArray *)defaultData {
    return [NSArray  arrayWithObjects:[SubCategory objectWidthCategoryId:1 subName:NSLocalizedString(@"Telephone", nil)],
     [SubCategory objectWidthCategoryId:1 subName:NSLocalizedString(@"Electricity", nil)],
     [SubCategory objectWidthCategoryId:1 subName:NSLocalizedString(@"Gas", nil)],
     [SubCategory objectWidthCategoryId:1 subName:NSLocalizedString(@"Internet", nil)],
     [SubCategory objectWidthCategoryId:1 subName:NSLocalizedString(@"Rent", nil)],
     [SubCategory objectWidthCategoryId:1 subName:NSLocalizedString(@"Cable TV", nil)],
     [SubCategory objectWidthCategoryId:1 subName:NSLocalizedString(@"Water", nil)],
     [SubCategory objectWidthCategoryId:2 subName:NSLocalizedString(@"Groceries", nil)],
     [SubCategory objectWidthCategoryId:2 subName:NSLocalizedString(@"Dining out", nil)],
     [SubCategory objectWidthCategoryId:3 subName:NSLocalizedString(@"Movies", nil)],
     [SubCategory objectWidthCategoryId:3 subName:NSLocalizedString(@"Video Rental", nil)],
     [SubCategory objectWidthCategoryId:3 subName:NSLocalizedString(@"Magazines", nil)],
     [SubCategory objectWidthCategoryId:4 subName:NSLocalizedString(@"Maintenance", nil)],
     [SubCategory objectWidthCategoryId:4 subName:NSLocalizedString(@"Gas", nil)],
     [SubCategory objectWidthCategoryId:4 subName:NSLocalizedString(@"Parking", nil)],
     [SubCategory objectWidthCategoryId:4 subName:NSLocalizedString(@"Registration", nil)],
     [SubCategory objectWidthCategoryId:5 subName:NSLocalizedString(@"Books", nil)],
     [SubCategory objectWidthCategoryId:5 subName:NSLocalizedString(@"Tuition", nil)],
     [SubCategory objectWidthCategoryId:5 subName:NSLocalizedString(@"Others", nil)],
     [SubCategory objectWidthCategoryId:6 subName:NSLocalizedString(@"Clothing", nil)],
     [SubCategory objectWidthCategoryId:6 subName:NSLocalizedString(@"Furnishing", nil)],
     [SubCategory objectWidthCategoryId:6 subName:NSLocalizedString(@"Others", nil)],
     [SubCategory objectWidthCategoryId:7 subName:NSLocalizedString(@"Health", nil)],
     [SubCategory objectWidthCategoryId:7 subName:NSLocalizedString(@"Dental", nil)],
     [SubCategory objectWidthCategoryId:7 subName:NSLocalizedString(@"Eyecare", nil)],
     [SubCategory objectWidthCategoryId:7 subName:NSLocalizedString(@"Physician", nil)],
     [SubCategory objectWidthCategoryId:7 subName:NSLocalizedString(@"Prescriptions", nil)],
     [SubCategory objectWidthCategoryId:8 subName:NSLocalizedString(@"Auto", nil)],
     [SubCategory objectWidthCategoryId:8 subName:NSLocalizedString(@"Life", nil)],
     [SubCategory objectWidthCategoryId:8 subName:NSLocalizedString(@"Home", nil)],
     [SubCategory objectWidthCategoryId:8 subName:NSLocalizedString(@"Health", nil)],
     [SubCategory objectWidthCategoryId:9 subName:NSLocalizedString(@"Travel", nil)],
     [SubCategory objectWidthCategoryId:9 subName:NSLocalizedString(@"Lodging", nil)],
     [SubCategory objectWidthCategoryId:9 subName:NSLocalizedString(@"Sightseeing", nil)],
     [SubCategory objectWidthCategoryId:10 subName:NSLocalizedString(@"Income Tax", nil)],
     [SubCategory objectWidthCategoryId:10 subName:NSLocalizedString(@"House Tax", nil)],
     [SubCategory objectWidthCategoryId:10 subName:NSLocalizedString(@"Water Tax", nil)],
     [SubCategory objectWidthCategoryId:10 subName:NSLocalizedString(@"Others", nil)],
     [SubCategory objectWidthCategoryId:13 subName:NSLocalizedString(@"Salary", nil)],
     [SubCategory objectWidthCategoryId:13 subName:NSLocalizedString(@"Reimbursement/Refunds", nil)],
     [SubCategory objectWidthCategoryId:13 subName:NSLocalizedString(@"Investment Income", nil)],
    nil];
}

@end
