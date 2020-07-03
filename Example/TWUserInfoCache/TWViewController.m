//
//  TWViewController.m
//  TWUserInfoCache
//
//  Created by wangxufeng092@163.com on 11/20/2019.
//  Copyright (c) 2019 wangxufeng092@163.com. All rights reserved.
//

#import "TWViewController.h"
#import "TWUserInfoCacheCommon.h"
#import "TWUserInfoCacheModel.h"
#import "TWUserInfo.h"
#import "TWUserInfoCacheManager.h"
//#import "FLEX/FLEX.h"

@interface TWViewController ()

@end

@implementation TWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    [[FLEXManager sharedManager] toggleExplorer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    NSLog(@"\ndoc:%@\ncah:%@\ntmp:%@", [TWUserInfoCacheCommon getAppLocalDocumentPath], [TWUserInfoCacheCommon getAppLocalCachesPath], [TWUserInfoCacheCommon getAppLocalTmpPath]);
//    TWUserInfo *userInfo = [[TWUserInfo alloc] init];
//    userInfo.name = @"lisi";
//    userInfo.phone = @"12723772";
//    TWUserInfoCacheModel<TWUserInfo *> *model = [[TWUserInfoCacheModel alloc] init];
////    model.cacheKey = @"172381";
//    model.userInfo = userInfo;
////
//    [TWUserInfoCacheManager storeUserInfoCacheWithModel:model cacheKey:@"172381"];
    
    TWUserInfoCacheModel<TWUserInfo *> *user = [TWUserInfoCacheManager getUserInfoModelWithCacheKey:@"172381"];
//    TWUserInfoCacheModel<TWUserInfo *> *user = [TWUserInfoCacheManager getUserInfoModelWithCacheKey:nil];
    NSLog(@"%@", user.userInfo.name);
}

@end
