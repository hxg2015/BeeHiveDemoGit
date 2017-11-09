//
//  HomeModule.m
//  BeeHiveDemo
//
//  Created by hxg on 2017/11/7.
//  Copyright © 2017年 hxg. All rights reserved.
//

#import "HomeModule.h"

#import "BeeHive.h"
#import "BHDemoService.h"
#import "BHHomeViewController.h"

@interface HomeModule()<BHModuleProtocol>

@end

@implementation HomeModule

-(void)modInit:(BHContext *)context
{
    switch (context.env) {
        case BHEnvironmentDev:
            //....初始化开发环境
            NSLog(@"初始化开发环境..");
            break;
        case BHEnvironmentProd:
            //....初始化生产环境
            NSLog(@"初始化生产环境...");
        default:
            break;
    }
}

- (void)modSetUp:(BHContext *)context
{
    NSLog(@"HomeModule setup");
}

@end
