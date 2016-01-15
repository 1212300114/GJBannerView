//
//  ViewController.m
//  GJBannerViewDemo
//
//  Created by 嵇俊杰 on 16/1/15.
//  Copyright © 2016年 GaryJi. All rights reserved.
//

#import "ViewController.h"
#import "GJBannerView.h"
@interface ViewController ()<GJBannerViewDelegate>
@property (nonatomic, strong) IBOutlet UILabel *indexLabel;
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
    UIImage *image = [UIImage imageNamed:@"testImage"];
    NSArray *images = @[image,image,image,image,image];
    GJBannerView *banner = [GJBannerView bannerViewWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.width*0.75) bannerSourceType:GJBannerViewSourceTypeNetWork bannerItemType:GJBannerViewItemTypeNormal autoPlay:YES];
    [self.view addSubview:banner];

    banner.bannerViewPageControlType = GJBannerViewPageControlTypeLeft;
    [banner setImageUrls:imageUrls titles:titles autoPlayTime:2];
    
    GJBannerView *secondBanner = [GJBannerView bannerViewWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.width *0.8, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.width*0.75 ) bannerSourceType:GJBannerViewSourceTypeLocal bannerItemType:GJBannerViewItemTypeNormal autoPlay:YES];
    secondBanner.delegate = self;
    [self.view addSubview:secondBanner];
    [secondBanner setImages:images titles:titles autoPlayTime:2.0];
  
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)bannerViewDidSelectedBanner:(GJBannerView *)banner atIndex:(NSUInteger)index{
    NSLog(@"%lu",index);
    _indexLabel.text = [NSString stringWithFormat:@"index:%lu",index];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
