//
//  ViewController.m
//  GJBannerViewDemo
//
//  Created by 嵇俊杰 on 16/1/15.
//  Copyright © 2016年 GaryJi. All rights reserved.
//

#import "ViewController.h"
#import "GJBannerView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *imageUrls = @[@"http://file.bmob.cn/M02/47/31/oYYBAFaXCriAKekUAAZnchatGj8929.png",
                           @"http://file.bmob.cn/M02/47/31/oYYBAFaXCriAKekUAAZnchatGj8929.png",
                           @"http://file.bmob.cn/M02/47/31/oYYBAFaXCriAKekUAAZnchatGj8929.png",
                           @"http://file.bmob.cn/M02/47/31/oYYBAFaXCriAKekUAAZnchatGj8929.png",
                           @"http://file.bmob.cn/M02/47/31/oYYBAFaXCriAKekUAAZnchatGj8929.png"];
    NSArray *titles = @[@"111",@"222",@"333",@"444",@"555"];
    GJBannerView *banner = [GJBannerView bannerViewWithFrame:CGRectMake(0, 0, 300, 200) bannerSourceType:GJBannerViewSourceTypeNetWork bannerItemType:GJBannerViewItemTypeNormal autoPlay:YES];
    [self.view addSubview:banner];
    [banner setImageUrls:imageUrls titles:titles autoPlayTime:2];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
