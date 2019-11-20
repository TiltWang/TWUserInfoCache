//
//  TWUserInfoCacheCommon.m
//  TWUserInfoCache_Example
//
//  Created by Tilt on 2019/11/20.
//  Copyright © 2019 wangxufeng092@163.com. All rights reserved.
//

#import "TWUserInfoCacheCommon.h"

@implementation TWUserInfoCacheCommon

+ (NSString *)getAppLocalDocumentPath {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
}

+ (NSString *)getAppLocalCachesPath {
    return  [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
}

+ (NSString *)getAppLocalTmpPath {
    return  NSTemporaryDirectory();
}

@end
