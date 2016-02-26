# targad-action
####targad-action Is a network layer , lightweight and durable\n
####它是一款轻便耐用的targad－action模式的网络层，非常适合于快速开发。
#  How to use
```object-c
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
    } Delay:0.5];
   
}
```

#License
All the source code is published under the MIT license. See LICENSE file for details.

       
