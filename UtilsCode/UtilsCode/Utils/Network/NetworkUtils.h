//
//  NetworkUtils.h
//  UtilsCode
//
//  Created by alaiye on 2017/10/29.
//  Copyright © 2017年 alaiye. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkUtils : NSObject

+ (void)jsonPost:(NSString *)url
          params:(NSDictionary *)params
         success:(void (^)(NSDictionary *responseObject))success
         failure:(void (^)(NSError *error))failure;

+ (void)jsonGet:(NSString *)url
         params:(NSDictionary *)params
        success:(void (^)(id response))success
        failure:(void (^)(NSError *))failure;

@end
