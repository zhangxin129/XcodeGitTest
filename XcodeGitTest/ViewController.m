//
//  ViewController.m
//  XcodeGitTest
//
//  Created by zhangxin on 2021/2/3.
//

#import "ViewController.h"
#import "UIButton+Category.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton * button = UIButton.button(UIButtonTypeCustom,CGRectMake(100, 100, 100, 100))
                                .bgColor(UIColor.yellowColor)
                                .sel(self,@selector(test),UIControlEventTouchUpInside);
    
    [self.view addSubview:button];

}

-(void)test{
    NSLog(@"111");
}
@end
