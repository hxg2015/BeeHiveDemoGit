//
//  AppUISkeletonServiceProtocol.h
//  BeeHiveDemo
//
//  Created by hxg on 2017/11/7.
//  Copyright © 2017年 hxg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BHServiceProtocol.h"


/**
    UI接口封装协议
 */
@protocol AppUISkeletonServiceProtocol <NSObject, BHServiceProtocol>

- (UIViewController *)mainViewController;

@end
