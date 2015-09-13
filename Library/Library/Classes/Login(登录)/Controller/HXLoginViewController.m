//
//  LoginViewController.m
//  Library
//
//  Created by XXX on 15/9/12.
//  Copyright (c) 2015年 huangx. All rights reserved.
//

#import "HXLoginViewController.h"
#import "Library-Swift.h"

@interface HXLoginViewController ()

- (IBAction)loginBtnClick:(TKTransitionSubmitButton *)sender;

@end

@implementation HXLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}


- (IBAction)loginBtnClick:(TKTransitionSubmitButton *)sender {
    
    [sender startLoadingAnimation];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [sender returnToOriginalState];
    });
}
@end
