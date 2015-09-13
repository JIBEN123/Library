//
//  LoginViewController.m
//  Library
//
//  Created by XXX on 15/9/12.
//  Copyright (c) 2015年 huangx. All rights reserved.
//

#import "HXLoginViewController.h"
#import "Library-Swift.h"
#import "UIView+DCAnimationKit.h"

@interface HXLoginViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *logoView;
@property (weak, nonatomic) IBOutlet UIView *usernameView;
@property (weak, nonatomic) IBOutlet UIView *pwdView;
@property (weak, nonatomic) IBOutlet UIButton *forgetBtn;
@property (weak, nonatomic) IBOutlet TKTransitionSubmitButton *loginBtn;
@property (weak, nonatomic) IBOutlet UIButton *registerBtn;


- (IBAction)loginBtnClick:(TKTransitionSubmitButton *)sender;

@end

@implementation HXLoginViewController

#pragma mark - 生命周期方法

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.loginBtn.hidden = YES;
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self setupAnimations];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
    
//    [self setupAnimations];
}

#pragma mark - 私有方法

- (void)setupAnimations
{
//    [self.logoView expandIntoView:self.view finished:nil];
    [self.logoView bounceIntoView:self.view direction:DCAnimationDirectionTop];
    
    [self.usernameView bounceIntoView:self.view direction:DCAnimationDirectionLeft];
    [self.pwdView bounceIntoView:self.view direction:DCAnimationDirectionRight];
    [self.forgetBtn bounceIntoView:self.view direction:DCAnimationDirectionRight];
    [self.registerBtn bounceIntoView:self.view direction:DCAnimationDirectionBottom];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        self.loginBtn.hidden = NO;
        [self.loginBtn bounceIntoView:self.view direction:DCAnimationDirectionBottom];
    });
}

#pragma mark - 监听控件事件

- (IBAction)loginBtnClick:(TKTransitionSubmitButton *)sender {
    
    [sender startLoadingAnimation];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [sender returnToOriginalState];
    });
}
@end
