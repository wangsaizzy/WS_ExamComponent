//
//  UIColor+WS_Gradient.h
//  ZhengZhou_Login
//
//  Created by 王赛 on 2019/9/6.
//  Copyright © 2019 Alibaba. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


typedef NS_ENUM(NSInteger, WSGradientChangeDirection) {
    WSGradientChangeDirectionLevel,                //水平方向渐变
    WSGradientChangeDirectionVertical,             //垂直方向渐变
    WSGradientChangeDirectionUpwardDiagonalLine,   //主对角线方向渐变
    WSGradientChangeDirectionDownDiagonalLine,     //副对角线方向渐变
    
};
    
  
    
    
@interface UIColor (WS_Gradient)

/*
 size:渐变区域的尺寸
 direction:渐变方向
 startColor:开始颜色
 endColor:结束颜色
*/
+ (instancetype)ws_colorGradientChangeWithSize:(CGSize)size
                                     direction:(WSGradientChangeDirection)direction
                                     startColor:(UIColor*)startcolor
                                     endColor:(UIColor*)endColor;



@end

NS_ASSUME_NONNULL_END
