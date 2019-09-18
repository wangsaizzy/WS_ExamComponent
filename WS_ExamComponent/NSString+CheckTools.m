//
//  NSString+CheckTools.m
//  ZhengZhou_Login
//
//  Created by 王赛 on 2019/9/11.
//  Copyright © 2019 Alibaba. All rights reserved.
//

#import "NSString+CheckTools.h"

@implementation NSString (CheckTools)

/**
 判断字符串是否为空
 
 @param aStr 字符串
 @return 为空返回yes
 */
+ (BOOL)isBlankString:(NSString *)aStr {
    if ( !aStr ) {
        return YES;
    }
    if ([aStr isKindOfClass:[NSNull class]]) {
        return YES;
        
    }
    if ([aStr isEqual:[NSNull null]]) {
        return YES;
        
    }
    if (!aStr.length) {
        return YES;
        
    }
    if (aStr == nil) {
        return YES;
        
    }
    if (aStr == NULL) {
        return YES;
        
    }
    if ([aStr isEqualToString:@"NULL"]){
        return YES;
        
    }
    
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmedStr = [aStr stringByTrimmingCharactersInSet:set];
    if (!trimmedStr.length) {
        return YES;
        
    }
    if ([aStr containsString:@"null"]){
        return YES;
        
    }
    return NO;
}
@end
