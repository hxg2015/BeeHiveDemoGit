//
//  TradeModule.m
//  BeeHiveDemo
//
//  Created by hxg on 2017/11/7.
//  Copyright © 2017年 hxg. All rights reserved.
//

#import "TradeModule.h"

#import "BeeHive.h"
#import "TradeViewController.h"

@implementation TradeModule

+ (void)load{
    // 动态注册模型类
    [BeeHive registerDynamicModule:[self class]];
}


- (id)init{
    if (self = [super init])
    {
        NSLog(@"TradeModule init");
    }
    
    return self;
}



-(void)modInit:(BHContext *)context
{
    NSLog(@"%@:模块初始化中",context.moduleConfigName);
    
    
    id<TradeServiceProtocol> service = [[BeeHive shareInstance] createService:@protocol(TradeServiceProtocol)];
    
    service.itemId = @"我是单例";
}


- (void)modSetUp:(BHContext *)context
{
    //[[BeeHive shareInstance]  registerService:@protocol(TradeServiceProtocol)
    //                                  service:[TradeViewController class]];
    
    NSLog(@"TradeModule setup");
    
}

- (void)basicModuleLevel
{
    
}

@end
