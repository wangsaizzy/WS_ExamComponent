//
//  UIColor+WS_Gradient.m
//  ZhengZhou_Login
//
//  Created by 王赛 on 2019/9/6.
//  Copyright © 2019 Alibaba. All rights reserved.
//

#import "UIColor+WS_Gradient.h"

@implementation UIColor (WS_Gradient)


+ (instancetype)ws_colorGradientChangeWithSize:(CGSize)size
                                     direction:(WSGradientChangeDirection)direction
                                    startColor:(UIColor*)startcolor
                                      endColor:(UIColor*)endColor {
    if(CGSizeEqualToSize(size,CGSizeZero) || !startcolor || !endColor) {
        return nil;
        
    }
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame=CGRectMake(0,0, size.width, size.height);
    CGPoint startPoint =CGPointZero;
    if (direction == WSGradientChangeDirectionLevel) {
        startPoint =CGPointMake(0.0,1.0);
        
    }
    gradientLayer.startPoint= startPoint;
    CGPoint endPoint = CGPointZero;
    switch(direction) {
        case WSGradientChangeDirectionLevel:
        endPoint =CGPointMake(1.0,0.0);
        break;
        case WSGradientChangeDirectionVertical:
        endPoint =CGPointMake(0.0,1.0);
        break;
        case WSGradientChangeDirectionUpwardDiagonalLine:
        endPoint =CGPointMake(1.0,1.0);
        break;
        case WSGradientChangeDirectionDownDiagonalLine:
        endPoint =CGPointMake(1.0,0.0);
        break;
        default:
        break;
            
    }
    gradientLayer.endPoint= endPoint;
    gradientLayer.colors=@[(__bridge id)startcolor.CGColor, (__bridge id)endColor.CGColor];
    UIGraphicsBeginImageContext(size);
    [gradientLayer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage*image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return [UIColor colorWithPatternImage:image];
    
}


@end
