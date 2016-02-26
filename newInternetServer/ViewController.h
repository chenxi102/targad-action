//
//  ViewController.h
//  newInternetServer
//
//  Created by Seth Chen on 16/2/25.
//  Copyright © 2016年 xikang. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ViewController : UIViewController


@end

@interface NSObject (Dispatch)

- (void)dispatchInMainThread:(dispatch_block_t)block Delay:(NSTimeInterval)time;

@end