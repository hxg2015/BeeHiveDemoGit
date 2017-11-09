//
//  ShopViewController.m
//  BeeHiveDemo
//
//  Created by hxg on 2017/11/9.
//  Copyright © 2017年 hxg. All rights reserved.
//

#import "ShopViewController.h"
#import "BeeHive.h"
#import "BHDemoService.h"

@BeeHiveService(ShopServiceProtocol,ShopViewController)
@interface ShopViewController ()<ShopServiceProtocol>

@end

@implementation ShopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    
}


- (void)testShopeAction
{
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
