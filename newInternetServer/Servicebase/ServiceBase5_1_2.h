//
//  ServiceBase5_1_2.h
//  XKRW
//
//  Created by Seth Chen on 15/12/7.
//  Copyright © 2015年 xikang. All rights reserved.
//


#import <Foundation/Foundation.h>

extern NSString *const exzampleUrl;


@interface ServiceBase5_1_2 : NSObject

/**
*  @author Seth, 15-12-7
*
*  @brief  api注册网络请求返回的方法
*
*  @param target 当前vc
*  @param method 当前返回方法
*  @param 是否 成功
*/

- (BOOL)registerTarget:(nonnull id)target andResponseMethod:(nonnull SEL)method;

/**
 *  @author Seth, 15-12-7
 *
 *  @brief  异步get网络请求   底层
 *
 *  @param cCompleteUrl 当前请求的url
 *  @param paramers     当前参数
 *  @param response     响应方法
 */
- (void)startAsynchronizedGetMethodwithCompleteUrl:(nonnull NSString *)cCompleteUrl
                                        andParamer:(nullable NSDictionary *)paramers
                                 andResponseMethod:(nonnull SEL)response;

/**
 *  @author Seth, 15-12-7
 *
 *  @brief  异步post网络请求  底层
 *
 *  @param cCompleteUrl 当前请求的url
 *  @param paramers     当前参数
 *  @param response     响应方法
 */
- (void)startAsynchronizedPostMethodwithCompleteUrl:(nonnull NSString *)cCompleteUrl
                                         andParamer:(nullable NSDictionary *)paramers
                                  andResponseMethod:(nonnull SEL)response;


- (nullable NSDictionary *)startSynchronizedPostMethodwithCompleteUrl:(nonnull NSString *)cCompleteUrl
                                                  andParamer:(nullable NSDictionary *)paramers;

- (nonnull NSDictionary *)josnWithData:(nonnull NSData *)data;

@end


