//
//  ShopModule.m
//  BeeHiveDemo
//
//  Created by hxg on 2017/11/9.
//  Copyright © 2017年 hxg. All rights reserved.
//

#import "ShopModule.h"
#import "BeeHive.h"

// 实现模块的接口
@interface ShopModule()<BHModuleProtocol>


@end

@implementation ShopModule


- (void)modSetUp:(BHContext *)context
{
    
    
    
}

- (void)modInit:(BHContext *)context
{
    
    NSLog(@"%@ shopModuleInit...",context.moduleConfigName);
    
    
}





@end
