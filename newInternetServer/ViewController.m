//
//  ViewController.m
//  newInternetServer
//
//  Created by Seth Chen on 16/2/25.
//  Copyright © 2016年 xikang. All rights reserved.
//

#import "ViewController.h"
#import "ExampleApi.h"
#import "MBProgressHUD.h"

@interface ViewController ()
{
    ExampleApi  * __exampleApi;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    __exampleApi  = [ExampleApi new];
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    if ([__exampleApi registerTarget:self andResponseMethod:@selector(dataResInvc:)]) {
        [__exampleApi getData];
    }
}

- (void)dataResInvc:(id)data
{
    [self dispatchInMainThread:^{
        [MBProgressHUD hideHUDForView:self.view animated:YES];
        NSString * str = @"";
        NSDictionary * data_  = data;
        for (NSString * str_ in data_.allValues) {
          str = [str stringByAppendingFormat:@"%@",str_];
        }
        [self showAlert:str andDisAppearAfterDelay:2];
    } Delay:0.5];
   
}

static  MBProgressHUD *hud = nil;
- (void)showAlert:(NSString *)str andDisAppearAfterDelay:(float)time
{
    if (!hud) {
        hud = [[MBProgressHUD alloc] initWithView:self.view];
    }
    hud.removeFromSuperViewOnHide = YES;
    hud.mode = MBProgressHUDModeCustomView;
    hud.labelText = str;
    [self.view addSubview:hud];
    [hud show:YES];
    [hud hide:YES afterDelay:time];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

@implementation NSObject(Dispatch)

- (void)dispatchInMainThread:(dispatch_block_t)block Delay:(NSTimeInterval)time
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(time * NSEC_PER_SEC)), dispatch_get_main_queue(), block);
}

@end

