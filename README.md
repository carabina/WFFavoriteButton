# WFFavoriteButton
A nice favorite button with pop

Usage
==============	
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
