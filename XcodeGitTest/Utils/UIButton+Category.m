//
//  UIButton+Category.m
//  XcodeGitTest
//
//  Created by zhangxin on 2021/2/7.
//

#import "UIButton+Category.h"

@implementation UIButton (Category)
+(UIButton * _Nonnull (^)(UIButtonType, CGRect))button{
    
    return ^(UIButtonType t,CGRect f){
        
        UIButton * button = [UIButton buttonWithType:t];
        button.frame = f;
        button.backgroundColor = [UIColor redColor];
        return button;
        
    };
    
}
-(UIButton * _Nonnull (^)(UIColor * _Nonnull))bgColor{
    
    return ^(UIColor * color){
        self.backgroundColor = color;
        return self;
        
    };
}

-(UIButton * _Nonnull (^)(id _Nonnull, SEL _Nonnull, UIControlEvents))sel{
    
    return  ^(id targrt, SEL selector,UIControlEvents eventType){
        [self addTarget:targrt action:selector forControlEvents:eventType];
        return self;
    };
    
}
@end
