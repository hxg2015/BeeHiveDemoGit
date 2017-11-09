//
//  TradeServiceProtocol.h
//  BeeHiveDemo
//
//  Created by hxg on 2017/11/7.
//  Copyright © 2017年 hxg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BHServiceProtocol.h"

@protocol TradeServiceProtocol <NSObject, BHServiceProtocol>

@property(nonatomic, strong) NSString *itemId;


@end
