//
//  Helper.h
//  SmartBuild
//
//  Created by sicnu_ifox on 17/5/20.
//  Copyright © 2017年 sifu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Helper : NSObject

+ (NSDate *)dateFromString:(NSString *)dateStr;

+ (NSDate *)localDateFromRowDate:(NSDate *)date;

+ (NSDate *)localDateFromString:(NSString *)dateStr;
//+ (NSArray *)filterStringArray:(NSArray *)array byKey:(NSString *)key;

+ (NSString *)jsonStringWithDictionary:(NSDictionary *)dict;

+ (NSDictionary *)jsonDictWithString:(NSString *)string;

+ (BOOL)isValidIdCardNum:(NSString *)cardNumber;

+ (BOOL)isPureInt:(NSString *)string;

+ (BOOL)isPureFloat:(NSString *)string;

+ (void)removeNavigationBarBottomLine:(UIViewController *)target;

+ (NSString *)imageToBase64Str:(UIImage *)image;

+ (UIImage *)base64StrToUIImage:(NSString *)encodedImageStr;


/**
 显示一个按钮的弹框

 @param viewController 显示alert的控制器
 @param title 标题
 @param message 描述信息
 @param handler 按钮事件
 */
+ (void)showAlertWithOneAction:(UIViewController *)viewController
                       title:(NSString *)title
                     message:(NSString *)message
                   actionTitle:(NSString *)actionTitle
                       handler:(void (^)(void))handler;

/**
 保存图片到document

 @param saveImage 图片对象
 @param imageName 图片名
 @param back 成功回调
 @return 成功失败标志
 */
+ (BOOL)saveImage:(UIImage *)saveImage
             name:(NSString *)imageName
         callback:(void (^)(NSString *imagePath))back;


/**
 除去字符串两边的空格

 @param originStr 原始字符串
 @return 去除了左右两边空格的字符串
 */
+ (NSString *)trim:(NSString *)originStr;


/**
 时间戳转为YYYY-MM-dd HH:mm:ss格式的时间

 @param timeStamp 时间戳
 @return 格式化后的时间
 */
+ (NSString *)convertDateViaTimeStamp:(double)timeStamp;


/**
 为数据去null

 @param obj 原始数据
 @param defaultValue 默认值
 @return 将原始的数据去null
 */
+ (NSString *)convertToNormalFiled:(id)obj defaultValue:(NSString *)defaultValue;

@end
