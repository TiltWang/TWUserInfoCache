# TWUserInfoCache

[![CI Status](https://img.shields.io/travis/tiltwang/TWUserInfoCache.svg?style=flat)](https://travis-ci.org/tiltwang/TWUserInfoCache)
[![Version](https://img.shields.io/cocoapods/v/TWUserInfoCache.svg?style=flat)](https://cocoapods.org/pods/TWUserInfoCache)
[![License](https://img.shields.io/cocoapods/l/TWUserInfoCache.svg?style=flat)](https://cocoapods.org/pods/TWUserInfoCache)
[![Platform](https://img.shields.io/cocoapods/p/TWUserInfoCache.svg?style=flat)](https://cocoapods.org/pods/TWUserInfoCache)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TWUserInfoCache is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TWUserInfoCache'
```

## Usage

```
@interface TWUserInfo : NSObject <NSCoding>

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) NSString *phone;

@end


#import "TWUserInfo.h"

@implementation TWUserInfo

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.name forKey:@"name"];
    [coder encodeObject:self.phone forKey:@"phone"];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        
        self.name = [coder decodeObjectForKey:@"name"];
        self.phone = [coder decodeObjectForKey:@"phone"];
        
    }
    return self;
}

@end

```

```
TWUserInfo *userInfo = [[TWUserInfo alloc] init];
userInfo.name = @"lisi";
userInfo.phone = @"1231283";
TWUserInfoCacheModel<TWUserInfo *> *model = [[TWUserInfoCacheModel alloc] init];
model.userInfo = userInfo;

[TWUserInfoCacheManager storeUserInfoCacheWithModel:model cacheKey:@"172381"];

TWUserInfoCacheModel<TWUserInfo *> *user = [TWUserInfoCacheManager getUserInfoModelWithCacheKey:model.cacheKey];

```

## Author

tiltwang

## License

TWUserInfoCache is available under the MIT license. See the LICENSE file for more info.
