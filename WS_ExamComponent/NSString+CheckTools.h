//
//  NSString+CheckTools.h
//  ZhengZhou_Login
//
//  Created by 王赛 on 2019/9/11.
//  Copyright © 2019 Alibaba. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (CheckTools)

/**
 判断字符串是否为空
 @param aStr 字符串
 @return 为空返回yes
 */
+ (BOOL)isBlankString:(NSString *)aStr;

@end

NS_ASSUME_NONNULL_END
