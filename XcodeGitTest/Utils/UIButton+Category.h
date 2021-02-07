//
//  UIButton+Category.h
//  XcodeGitTest
//
//  Created by zhangxin on 2021/2/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (Category)
+(UIButton *(^)(UIButtonType type,CGRect frame))button;
-(UIButton *(^)(UIColor *color))bgColor;
-(UIButton *(^)(id target,SEL selector ,UIControlEvents eventType))sel;
@end 

NS_ASSUME_NONNULL_END
