//
//  TWUserInfoCacheManager.m
//  TWUserInfoCache_Example
//
//  Created by Tilt on 2019/11/20.
//  Copyright © 2019 wangxufeng092@163.com. All rights reserved.
//

#import "TWUserInfoCacheManager.h"
#import "TWUserInfoCacheCommon.h"

static NSString *defaultCacheKey = @"defaultCacheKey";

@implementation TWUserInfoCacheManager

+ (void)storeUserInfoCacheWithModel:(TWUserInfoCacheModel *)model cacheKey:(nullable NSString *)cacheKey {
    if (cacheKey) {
        model.cacheKey = cacheKey;
    } else {
        model.cacheKey = defaultCacheKey;
    }
    NSString *filePath = [self getUserInfoCachePathWithCacheKey:cacheKey];
    [NSKeyedArchiver archiveRootObject:model toFile:filePath];
}

//获取存储路径
+ (NSString *)getUserInfoCachePathWithCacheKey:(NSString *)cacheKey {
    NSString *path = [TWUserInfoCacheCommon getAppLocalDocumentPath];
    return [path stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.userinfo", cacheKey]];
}

+ (TWUserInfoCacheModel *)getUserInfoModelWithCacheKey:(nullable NSString *)cacheKey {
    NSString *key = defaultCacheKey;
    if (cacheKey) {
        key = cacheKey;
    }
    NSString *filePath = [self getUserInfoCachePathWithCacheKey:key];
    return [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
}

@end
