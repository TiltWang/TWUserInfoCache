//
//  TWUserInfoCacheModel.m
//  TWUserInfoCache_Example
//
//  Created by Tilt on 2019/11/20.
//  Copyright © 2019 wangxufeng092@163.com. All rights reserved.
//

#import "TWUserInfoCacheModel.h"

@implementation TWUserInfoCacheModel

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.cacheKey forKey:@"cacheKey"];
    [coder encodeObject:self.userInfo forKey:@"userInfo"];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        
        self.cacheKey = [coder decodeObjectForKey:@"cacheKey"];
        self.userInfo = [coder decodeObjectForKey:@"userInfo"];
        
    }
    return self;
}

@end
