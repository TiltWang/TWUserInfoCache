//
//  TWUserInfoCacheModel.h
//  TWUserInfoCache_Example
//
//  Created by Tilt on 2019/11/20.
//  Copyright © 2019 wangxufeng092@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TWUserInfoCacheModel<T> : NSObject <NSCoding>

//存储到本地的缓存key
@property (nonatomic, strong) NSString *cacheKey;
//存储的模型
@property (nonatomic, strong) T userInfo;

@end

NS_ASSUME_NONNULL_END
