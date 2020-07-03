//
//  TWUserInfo.m
//  TWUserInfoCache_Example
//
//  Created by Tilt on 2019/11/20.
//  Copyright © 2019 wangxufeng092@163.com. All rights reserved.
//

#import "TWUserInfo.h"

@implementation TWUserInfo

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.name forKey:@"name"];
    [coder encodeObject:self.phone forKey:@"phone"];
    [coder encodeObject:self.age forKey:@"age"];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        
        self.name = [coder decodeObjectForKey:@"name"];
        self.phone = [coder decodeObjectForKey:@"phone"];
        self.age = [coder decodeObjectForKey:@"age"];
    }
    return self;
}

@end
