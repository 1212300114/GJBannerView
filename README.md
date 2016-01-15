# GJBanneView
This is a banner view of iOS ,which can auto play but is tight with SDWebImage.
# and here is the screen shot
![](https://github.com/1212300114/GJBannerView/raw/master/AutoPlayBanner.gif)  

# how to use
put the SourceLib into yout project and use it like below:
```objective-c
    // create a banner  and it's data from network
    GJBannerView *banner = [GJBannerView bannerViewWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.width*0.75) bannerSourceType:GJBannerViewSourceTypeNetWork bannerItemType:GJBannerViewItemTypeNormal autoPlay:YES];
    [self.view addSubview:banner];
    // set the page control posion 
    banner.bannerViewPageControlType = GJBannerViewPageControlTypeLeft;
    // set the data of banner and banner will show
    [banner setImageUrls:imageUrls titles:titles autoPlayTime:2];
    // create a banner with local file
    GJBannerView *secondBanner = [GJBannerView bannerViewWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.width *0.8, 
    [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.width*0.75 ) bannerSourceType:GJBannerViewSourceTypeLocal bannerItemType:GJBannerViewItemTypeNormal autoPlay:YES];
    //delegate to handle tap gesture it will pass the current page back
    secondBanner.delegate = self;
    [self.view addSubview:secondBanner];
    [secondBanner setImages:images titles:titles autoPlayTime:2.0];

```
# others  
I want to add more feature to my banner  like making it can't scroll endless and something else in the feature  

#addition 
I am a chinese . My English is not very god ..so this read me and the notes inside the code may have grammer bugs .
