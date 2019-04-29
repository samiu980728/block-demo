//
//  BTNView.h
//  button
//
//  Created by 李飞艳 on 2019/4/29.
//  Copyright © 2019年 李飞艳. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BTNView : UIView
//这个block用于button点击事件发生时回调，把需要的参数传进去
@property (nonatomic, copy) void(^submitCallBackBlock)(UIButton *button, NSString *name);
@end

NS_ASSUME_NONNULL_END
