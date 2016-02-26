//
//  ExampleApi.m
//  newInternetServer
//
//  Created by Seth Chen on 16/2/25.
//  Copyright © 2016年 xikang. All rights reserved.
//

#import "ExampleApi.h"

@implementation ExampleApi

- (void)getData
{
    [self startAsynchronizedGetMethodwithCompleteUrl:exzampleUrl andParamer:nil andResponseMethod:@selector(dataRes:)];
}


//这里处理数据
- (NSDictionary *)dataRes:(NSDictionary *)data
{
    return data;
}

@end
