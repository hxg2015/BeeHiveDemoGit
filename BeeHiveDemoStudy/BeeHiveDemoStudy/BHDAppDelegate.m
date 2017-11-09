//
//  AppDelegate.m
//  BeeHiveDemo
//
//  Created by hxg on 2017/11/7.
//  Copyright © 2017年 hxg. All rights reserved.
//

#import "BHDAppDelegate.h"

#import "BHDemoService.h"
#import "BHTimeProfiler.h"
#import <mach-o/dyld.h>
#import "BHModuleManager.h"
#import "BHServiceManager.h"

@interface BHDAppDelegate ()

@end

@implementation BHDAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // 配置上下文
    [BHContext shareInstance].application = application;
    [BHContext shareInstance].launchOptions = launchOptions;
    
    //  配置模型
    [BHContext shareInstance].moduleConfigName = @"BeeHive.bundle/BeeHive";//可选，默认为BeeHive.bundle/BeeHive.plist
    //  配置服务模型
    [BHContext shareInstance].serviceConfigName = @"BeeHive.bundle/BHService";
    
    [BeeHive shareInstance].enableException = YES;
    
    // 使配置的上下文生效
    [[BeeHive shareInstance] setContext:[BHContext shareInstance]];
    [[BHTimeProfiler sharedTimeProfiler] recordEventTime:@"BeeHive::super start launch"];
    
    
    [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    
    id<HomeServiceProtocol> homeVc = [[BeeHive shareInstance] createService:@protocol(HomeServiceProtocol)];
    
    
    if ([homeVc isKindOfClass:[UIViewController class]]) {
        UINavigationController *navCtrl = [[UINavigationController alloc] initWithRootViewController:(UIViewController*)homeVc];
        
        self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        self.window.rootViewController = navCtrl;
        
        [self.window makeKeyAndVisible];
    }
    
    
    
    return YES;
}

@end
