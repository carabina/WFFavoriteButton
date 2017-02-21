//
//  WFFavoriteButton.m
//  WFFavoriteButton
//
//  Created by jwfstars on 15/1/8.
//  Copyright (c) 2015年 jwfstars. All rights reserved.
//

#import "WFFavoriteButton.h"
#import <pop/POP.h>

@interface WFFavoriteButton()
@property (nonatomic, assign) WFFavoriteButtonStyle style;
@end

@implementation WFFavoriteButton

- (instancetype)initWithStyle:(WFFavoriteButtonStyle)style
{
    self = [super initWithFrame:CGRectZero];
    if (self) {
        self.style = style;
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.style = WFFavoriteButtonStyleTrack;
    }
    return self;
}

- (void)setStyle:(WFFavoriteButtonStyle)style
{
    _style = style;
    
    if (style == WFFavoriteButtonStyleTrack) {
        self.adjustsImageWhenHighlighted = NO;
    }
}

- (void)setHighlighted:(BOOL)highlighted
{
    if (self.style == WFFavoriteButtonStyleTrack) {
        
    }else {
        [super setHighlighted:highlighted];
    }
};

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [self setSelected:selected animated:animated completionBlock:nil];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated completionBlock:(dispatch_block_t)completionBlock
{
    if (animated) {
        if (self.style == WFFavoriteButtonStyleShake) {
            [super setSelected:selected];
            if (selected) {
                [self outsideAnimationOnComplete:completionBlock];
            }else {
                [self insideAnimationOnComplete:completionBlock];
            }
        }else {
            [super setSelected:selected];
        }
    }else {
        [super setSelected:selected];
    }
}

- (void)outsideAnimationOnComplete:(dispatch_block_t)completionBlock
{
    POPSpringAnimation *scale = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    scale.fromValue = [NSValue valueWithCGPoint:CGPointMake(1.3, 1.3)];
    scale.toValue = [NSValue valueWithCGPoint:CGPointMake(1.0, 1.0)];
    scale.springBounciness = 15.0f;
    scale.springSpeed = 6.0f;
    scale.completionBlock = ^(POPAnimation *anim, BOOL finished) {
        if (completionBlock) {
            completionBlock();
        }
    };
    [self pop_addAnimation:scale forKey:@"scale"];
}

- (void)insideAnimationOnComplete:(dispatch_block_t)completionBlock
{
    POPSpringAnimation *scale = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    scale.fromValue = [NSValue valueWithCGPoint:CGPointMake(1.1, 1.1)];
    scale.toValue = [NSValue valueWithCGPoint:CGPointMake(1.0, 1.0)];
    scale.springBounciness = 5.0f;
    scale.springSpeed = 10.0f;
    scale.completionBlock = ^(POPAnimation *anim, BOOL finished) {
        if (completionBlock) {
            completionBlock();
        }
    };
    [self pop_addAnimation:scale forKey:@"scale"];
}


- (BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
    [super beginTrackingWithTouch:touch withEvent:event];
    
    if (self.style == WFFavoriteButtonStyleTrack) {
        POPSpringAnimation *scale = [self pop_animationForKey:@"scale"];
        if (scale) {
            scale.toValue = [NSValue valueWithCGPoint:CGPointMake(0.7, 0.7)];
        } else {
            scale = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
            scale.toValue = [NSValue valueWithCGPoint:CGPointMake(0.7, 0.7)];
            scale.springBounciness = 25;
            scale.springSpeed = 18.0f;
            [self pop_addAnimation:scale forKey:@"scale"];
        }
    }
    return YES;
}

- (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
    [super endTrackingWithTouch:touch withEvent:event];
    
    if (self.style == WFFavoriteButtonStyleTrack) {
        POPSpringAnimation *scale = [self pop_animationForKey:@"scale"];
        if (scale) {
            scale.toValue = [NSValue valueWithCGPoint:CGPointMake(1.0, 1.0)];
        } else {
            scale = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
            scale.toValue = [NSValue valueWithCGPoint:CGPointMake(1.0, 1.0)];
            scale.springBounciness = 25;
            scale.springSpeed = 18.0f;
            [self pop_addAnimation:scale forKey:@"scale"];
        }
    }
}
@end
