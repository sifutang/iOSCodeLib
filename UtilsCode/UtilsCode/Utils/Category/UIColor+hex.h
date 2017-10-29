//
//  UIColor+hex.h
//  SmartBuild
//
//  Created by alaiye on 2017/6/15.
//  Copyright © 2017年 sifu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (hex)

/**
 从十六进制字符串获取颜色，

 @param color 支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 @return UIColor instance
 */
+ (UIColor *)colorWithHexString:(NSString *)color;

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

@end
