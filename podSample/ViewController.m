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
    // Do any additional setup after loading the view.
}


@end
