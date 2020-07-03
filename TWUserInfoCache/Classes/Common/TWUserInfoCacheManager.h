//
//  TWUserInfoCacheManager.h
//  TWUserInfoCache_Example
//
//  Created by Tilt on 2019/11/20.
//  Copyright © 2019 wangxufeng092@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TWUserInfoCacheModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TWUserInfoCacheManager : NSObject

//存储用户信息 传入模型 存储的key(可不传 有默认值)
+ (void)storeUserInfoCacheWithModel:(TWUserInfoCacheModel *)model cacheKey:(nullable NSString *)cacheKey;

//获取用户信息 存储的key 请与存信息时的key值保持一致
+ (TWUserInfoCacheModel *)getUserInfoModelWithCacheKey:(nullable NSString *)cacheKey;

@end

NS_ASSUME_NONNULL_END
