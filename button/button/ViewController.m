//
//  ViewController.m
//  button
//
//  Created by 李飞艳 on 2019/4/29.
//  Copyright © 2019年 李飞艳. All rights reserved.
//

#import "ViewController.h"
#import "BTNView.h"

@interface ViewController ()
@property (nonatomic, strong) BTNView *btnView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.btnView = [[BTNView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.btnView];
    
    //submitButton的点击事件发生时就会调到这里
    self.btnView.submitCallBackBlock = ^(UIButton * _Nonnull button, NSString * _Nonnull name) {
        NSLog(@"%@",name);
        
//        [self submit];//代码特别多的话就写成一个方法写在外面，要注意循环引用
    };
}

- (void)submit {
    
}

@end
