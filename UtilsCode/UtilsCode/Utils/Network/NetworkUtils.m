//
//  NetworkUtils.m
//  UtilsCode
//
//  Created by alaiye on 2017/10/29.
//  Copyright © 2017年 alaiye. All rights reserved.
//

#import "NetworkUtils.h"
#import "AFNetworking.h"

@implementation NetworkUtils

+ (void)jsonPost:(NSString *)url
      params:(NSDictionary *)params
     success:(void (^)(NSDictionary *responseObject))success
     failure:(void (^)(NSError *error))failure {
    
    NSLog(@"request url: %@=========params: %@", url, params);
    
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
    
    NSLog(@"request url: %@=========params: %@", url, params);
    
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
