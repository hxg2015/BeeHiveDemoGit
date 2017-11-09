//
//  BHHomeViewController.m
//  BeeHiveDemo
//
//  Created by hxg on 2017/11/7.
//  Copyright © 2017年 hxg. All rights reserved.
//

#import "BHHomeViewController.h"
#import "HomeDetailViewController.h"

// 导入配置信息相关的类
#import "BeeHive.h"

// 导入服务相关的类
#import "BHDemoService.h"

@BeeHiveService(HomeServiceProtocol,BHHomeViewController)
@interface BHHomeViewController ()<HomeServiceProtocol>

@property(nonatomic,strong) NSMutableArray *registerViewControllers;

@end

@implementation BHHomeViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // 数组的初始化
        self.registerViewControllers = [[NSMutableArray alloc] initWithCapacity:1];
        
        HomeDetailViewController *homeDetail = [[HomeDetailViewController alloc] init];
        if ([homeDetail isKindOfClass:[UIViewController class]]) {
            [self registerViewController:homeDetail title:@"首页" iconName:nil];
        }
        
        id<MyUserTrackServiceProtocol> userTrackView = [[BeeHive shareInstance] createService:@protocol(MyUserTrackServiceProtocol)];
        if ([userTrackView isKindOfClass:[UIViewController class]]) {
            [self registerViewController:(UIViewController *)userTrackView
                                   title:@"用户足迹"
                                iconName:nil];
        }
        
//        id<TradeServiceProtocol> v2 = [[BeeHive shareInstance] createService:@protocol(TradeServiceProtocol)];
//        if ([v2 isKindOfClass:[UIViewController class]]) {
//            v2.itemId = @"sdfsdfsfasf";
//            [self registerViewController:(UIViewController *)v2 title:@"交易2" iconName:nil];
//        }
        
                id<ShopServiceProtocol> v2 = [[BeeHive shareInstance] createService:@protocol(ShopServiceProtocol)];
                if ([v2 isKindOfClass:[UIViewController class]]) {
                    [self registerViewController:(UIViewController *)v2 title:@"商品" iconName:nil];
                }
        
        
        id<TradeServiceProtocol> s2 = (id<TradeServiceProtocol>)[[BeeHive shareInstance] createService:@protocol(TradeServiceProtocol)];
        if ([s2 isKindOfClass:[UIViewController class]]) {
            s2.itemId = @"例子222222";
            [self registerViewController:(UIViewController *)s2 title:@"交易" iconName:nil];
        }
        
        
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)registerViewController:(UIViewController *)vc title:(NSString *)title iconName:(NSString *)iconName
{
    vc.tabBarItem.image = [UIImage imageNamed:[NSString stringWithFormat:@"Home.bundle/%@", iconName]];
    vc.tabBarItem.title = title;
    
    [self.registerViewControllers addObject:vc];
    
    
    self.viewControllers = self.registerViewControllers;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
