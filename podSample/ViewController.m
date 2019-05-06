//
//  ViewController.m
//  podSample
//
//  Created by zhangxiwei on 2019/4/15.
//  Copyright © 2019 zhangxiwei. All rights reserved.
//

#import "ViewController.h"
#import "CircleMenu-Swift.h"
#import "PodSwift/PodSwift-Swift.h"
#import "MBProgressHUD.h"
#import "TRHome11ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *bar = [PodSwift bar];
    NSLog(@"bar1111 = %@", bar);
    PodSwift *swift1 = [PodSwift sharedManager];
    NSString *str111 = [swift1 printSwift];
    NSLog(@"str111 = %@", str111);
    
    PodView *view = [[PodView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:view];
    
//    double result = [PodSwift interestByAmount:10.0];
//    NSLog(@"result = %@",@(result));
    PodAgeiTest *swift = [[PodAgeiTest alloc] init];
    NSString *str = [swift ageiPrintSwift];
    NSLog(@"swift str = %@", str);
//    NSString *str = [swift1 printSwift];
//    NSLog(@"print swift function str = %@", str);
    CircleMenu *menu = [[CircleMenu alloc] initWithFrame:CGRectMake(200, 200, 20, 20) normalIcon:@"icon_login_wechat_normal" selectedIcon:@"icon_login_wechat_pressed" buttonsCount:4 duration:3 distance:70];
    [self.view addSubview:menu];
    
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(200, 300, 100,100)];
    [button setBackgroundColor:UIColor.redColor];
    [button setTitle:@"test push" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(pushPage:) forControlEvents:UIControlEventTouchUpInside];
    
    // Do any additional setup after loading the view.
}

- (void)pushPage:(id)sender {
    TRHome11ViewController *vc = [[TRHome11ViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nav animated:YES completion:nil];
}


@end
