//
//  WFFavoriteButton.h
//  WFFavoriteButton
//
//  Created by jwfstars on 15/1/8.
//  Copyright (c) 2015年 jwfstars. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, WFFavoriteButtonStyle) {
    WFFavoriteButtonStyleShake,
    WFFavoriteButtonStyleTrack,
};

@interface WFFavoriteButton : UIButton
- (instancetype)initWithStyle:(WFFavoriteButtonStyle)style;


- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated completionBlock:(dispatch_block_t)completionBlock;
@end
