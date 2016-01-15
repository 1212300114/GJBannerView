//
//  GJBannerView.h
//  YunNanJiWei
//
//  Created by 嵇俊杰 on 15/10/22.
//  Copyright © 2015年 GaryJ. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, GJBannerViewSourceType){
    GJBannerViewSourceTypeNetWork = 10001,// image from network --tight with sd webimage;
    GJBannerViewSourceTypeLocal = 10002// image from local
};

typedef NS_ENUM(NSInteger, GJBannerViewItemType){
    GJBannerViewItemTypeNormal = 10001,
    GJBannerViewItemTypeNoPageControl = 10002,
    GJBannerViewItemTypeCustom = 10003// no available now.....
};
typedef NS_ENUM(NSInteger, GJBannerViewPageControlType){
    GJBannerViewPageControlTypeLeft = 10001,
    GJBannerViewPageControlTypeRight = 10002,
    GJBannerViewPageControlTypeCenter = 10003// if center the label will not show
};
@class GJBannerView;

@protocol GJBannerViewDelegate <NSObject>

@required
//tap on the banner and return the index
-(void)bannerViewDidSelectedBanner:(GJBannerView*) banner atIndex:(NSUInteger)index;


@end

@interface GJBannerView : UIView

//properties must be setted from out sides
@property (nonatomic, strong) NSArray<UIImage *> *images; // array of images --- type UIImage
@property (nonatomic, strong) NSArray<NSString *> *imageUrls;
@property (nonatomic, assign) NSTimeInterval interval;
@property (nonatomic, strong) NSArray<NSString *> *titles;// array of titles of image --- type string
//properties can be setted from out sides ---but with default values-- from it's getter
@property (nonatomic, assign) GJBannerViewItemType bannerViewItemType;// item type
@property (nonatomic, assign) GJBannerViewSourceType bannerViewSourceType;// image source type
@property (nonatomic, assign) GJBannerViewPageControlType bannerViewPageControlType;//page control type;
@property (nonatomic,assign,getter=isAutoPlay) BOOL autoPlay;
@property (nonatomic, assign) NSTimeInterval autoPlayTime;
@property (nonatomic, strong) UIColor *currentControlColor;// the color of current page indicator
@property (nonatomic, strong) UIColor *controlColor;// the color of normal page indicator
@property (nonatomic, strong) UIColor *titleLableColor;// the color of the label
@property (nonatomic, strong) UIColor *bottomViewBackGroundColor;// the color of the bottom view back ground
@property (nonatomic,weak) id<GJBannerViewDelegate> delegate;// delegate to recognize the gesture;
@property (nonatomic,assign) CGFloat bottomHeight;
// designated initialize method if not use this method , the source type and item type will be normal and net work;
+ (instancetype)bannerViewWithFrame:(CGRect ) frame
                   bannerSourceType:(GJBannerViewSourceType ) bannerSourceType
                     bannerItemType:(GJBannerViewItemType ) bannerItemType
                           autoPlay:(BOOL) autoPlay;
// set data for the banner --when it's from local the play time only enable when the auto play is yes;
- (void)setImages:(NSArray<UIImage *> *) images
           titles:(NSArray<NSString *> *) titles
     autoPlayTime:(NSTimeInterval) autoPlayTime ;
// set data for the banner --when it's from network the play time only enable when the auto play is yes;
- (void)setImageUrls:(NSArray<NSString *> *)imageUrls
              titles:(NSArray<NSString *> *)titles
        autoPlayTime:(NSTimeInterval) autoPlayTime;
//to stop auto play from outside
- (void)stopAutoPlay;
// set the color of the page control
-(void)setCurrentControlColor:(UIColor *)currentControlColor
                 controlColor:(UIColor *)controlColor;


@end
