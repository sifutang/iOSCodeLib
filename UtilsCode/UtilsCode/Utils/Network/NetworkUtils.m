//
//  NetworkUtils.m
//  UtilsCode
//
//  Created by alaiye on 2017/10/29.
//  Copyright © 2017年 alaiye. All rights reserved.
//

#import "NetworkUtils.h"
#import "AFNetworking.h"
#import "Micro.h"

@implementation NetworkUtils

+ (void)monitoringNetworkState:(void (^)(NSInteger))block{
    
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    [manager startMonitoring];
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusUnknown:
            {
                //未知网络
                Log(@"[网络状态切换]--未知网络");
            }
                break;
            case AFNetworkReachabilityStatusNotReachable:
            {
                //无法联网
                Log(@"[网络状态切换]--无法联网");
            }
                break;
                
            case AFNetworkReachabilityStatusReachableViaWWAN:
            {
                //手机自带网络
                Log(@"[网络状态切换]--当前使用的是2g/3g/4g网络");
            }
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
            {
                //WIFI
                Log(@"[网络状态切换]--当前在WIFI网络下");
            }
                
        }
        block(status);
    }];
}

+ (void)jsonPost:(NSString *)url
      params:(NSDictionary *)params
     success:(void (^)(NSDictionary *responseObject))success
     failure:(void (^)(NSError *error))failure {
    
    Log(@"request url: %@=========params: %@", url, params);
    
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    session.requestSerializer = [AFJSONRequestSerializer serializer];
    
    [session.requestSerializer requestWithMethod:@"POST" URLString:url parameters:params error:nil];
    
    [session POST:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

+ (void)jsonGet:(NSString *)url
         params:(NSDictionary *)params
        success:(void (^)(id response))success
        failure:(void (^)(NSError *))failure {
    
    Log(@"request url: %@=========params: %@", url, params);
    
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    AFJSONRequestSerializer *requestSerializer = [AFJSONRequestSerializer serializer];
    
    session.requestSerializer = requestSerializer;
    session.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [session GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

@end
