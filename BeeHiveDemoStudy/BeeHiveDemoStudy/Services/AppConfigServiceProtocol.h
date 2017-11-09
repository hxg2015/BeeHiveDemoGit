//
//  AppConfigServiceProtocol.h
//  BeeHiveDemo
//
//  Created by hxg on 2017/11/7.
//  Copyright © 2017年 hxg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BHServiceProtocol.h"


/**
    APP配置服务协议
 */
@protocol AppConfigServiceProtocol <NSObject, BHServiceProtocol>


/**
   配置SDK
 */
- (void)setupSDK;


@end
