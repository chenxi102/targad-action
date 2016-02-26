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
        NSString * str = @"";
        NSDictionary * data_  = data;
        for (NSString * str_ in data_.allValues) {
          str = [str stringByAppendingFormat:@"%@",str_];
        }
        [self showAlert:str andDisAppearAfterDelay:2];
    } Delay:0.5];
   
}
```

  

       
