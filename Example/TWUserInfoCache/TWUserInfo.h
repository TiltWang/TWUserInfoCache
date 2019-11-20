//
//  TWUserInfo.h
//  TWUserInfoCache_Example
//
//  Created by Tilt on 2019/11/20.
//  Copyright © 2019 wangxufeng092@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TWUserInfo : NSObject <NSCoding>

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) NSString *phone;

@end

NS_ASSUME_NONNULL_END
