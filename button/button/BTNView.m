//
//  BTNView.m
//  button
//
//  Created by 李飞艳 on 2019/4/29.
//  Copyright © 2019年 李飞艳. All rights reserved.
//

#import "BTNView.h"

@interface BTNView ()
@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UIButton *submitButton;
@end

@implementation BTNView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
        [self addSubview:self.textField];
        self.textField.backgroundColor = [UIColor grayColor];
        self.textField.placeholder = @"input name";
        
        self.submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
        self.submitButton.frame = CGRectMake(150, 300, 100, 30);
        self.submitButton.backgroundColor = [UIColor redColor];
        [self addSubview:self.submitButton];
        [self.submitButton setTitle:@"submit" forState:UIControlStateNormal];
        [self .submitButton addTarget:self action:@selector(clickSubmitButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)clickSubmitButton:(UIButton *)button {
    //do something（需要view内部处理的事情可以直接写在这里）
    
    //点击事件发生时调用这个block，这里处理外部点击事件发生后要做的操作
    if (self.submitCallBackBlock) { //这里判断一下block有没有值，也就是判断一下有没有实现，没有实现直接调用回crash
        self.submitCallBackBlock(button, self.textField.text);
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
