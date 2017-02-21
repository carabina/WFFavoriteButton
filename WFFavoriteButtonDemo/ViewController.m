//
//  ViewController.m
//  WFFavoriteButtonDemo
//
//  Created by 江文帆 on 2017/2/21.
//  Copyright © 2017年 江文帆. All rights reserved.
//

#import "ViewController.h"
#import "WFPopButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
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
}

- (void)onTapShakeButton:(WFPopButton *)sender
{
    [sender setSelected:!sender.isSelected animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
