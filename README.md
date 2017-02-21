# WFFavoriteButton
A nice favorite button with pop


![screen_record~](http://o7cso12y9.bkt.clouddn.com/ezgif.com-video-to-gif%20%281%29.gif
)

### Usage
    WFPopButton *buttonTrack = [[WFPopButton alloc] initWithStyle:WFPopButtonStyleTrack];
    buttonTrack.frame = CGRectMake(100, 200, 60, 60);
    [buttonTrack setImage:[UIImage imageNamed:@"heart"] forState:UIControlStateNormal];
    [buttonTrack setTitle:@"track" forState:UIControlStateNormal];
    [self.view addSubview:buttonTrack];
    
    WFPopButton *buttonShake = [[WFPopButton alloc] initWithStyle:WFPopButtonStyleShake];
    buttonShake.frame = CGRectMake(100, 300, 60, 60);
    [buttonShake setImage:[UIImage imageNamed:@"heart_gray"] forState:UIControlStateNormal];
    [buttonShake setImage:[UIImage imageNamed:@"heart"] forState:UIControlStateSelected];
    [buttonShake setTitle:@"shake" forState:UIControlStateNormal];
    [buttonShake addTarget:self action:@selector(onTapShakeButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonShake];
 
### CocoaPods
1. Update cocoapods to the latest version.
2. Add `pod 'WFFavoriteButton'` to your Podfile.
3. Run `pod install` or `pod update`.
4. Import \<WFFavoriteButton/WFFavoriteButton.h\>.
