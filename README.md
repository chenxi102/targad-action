# targad-action
How to use
  1.init
       __exampleApi  = [ExampleApi new];
       [MBProgressHUD showHUDAddedTo:self.view animated:YES];
       if ([__exampleApi registerTarget:self andResponseMethod:@selector(dataResInvc:)]) {
           [__exampleApi getData];
       }
       note :  dataResInvc is the callback selector
       
