//
//  RegisterViewController.m
//  lifeManager
//
//  Created by yin yi on 2013/01/13.
//  Copyright (c) 2013年 yin yi. All rights reserved.
//

#import "RegisterViewController.h"
#import "resManager.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

@synthesize mySegment,account,password;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //设置密码文本框相关属性
    [password setSecureTextEntry:YES];
    [password setReturnKeyType:UIReturnKeyDone];
    [password setDelegate:self];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)press:(id)sender{
    if (![password.text isEqualToString:@""]) {
        //存储用户信息
        if (mySegment.selectedSegmentIndex == 0) {
            if ([[resManager getInstance].myData objectForKey:@"doudiu"] != nil) {
                UIAlertView *pwAlert = [[UIAlertView alloc] initWithTitle:@"重复注册" message:@"豆丢不能重复注册！如忘记密码请与殷仪联系！" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                [pwAlert show];
            }else{
                [[resManager getInstance].myData setObject:password.text forKey:@"doudiu"];
            }
        }else{
            if ([[resManager getInstance].myData objectForKey:@"yinyi"] != nil) {
                UIAlertView *pwAlert = [[UIAlertView alloc] initWithTitle:@"重复注册" message:@"您不能重复注册！如忘记密码请与殷仪联系！" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                [pwAlert show];
            }else{
                [[resManager getInstance].myData setObject:password.text forKey:@"yinyi"];
            }
        }
        //跳转到角色选择界面
        UIViewController* nextViewController = [[resManager getInstance].myStoryboard instantiateViewControllerWithIdentifier:@"SelectRoleViewController"];
        [self presentViewController:nextViewController animated:YES completion:nil];
    }else{
        UIAlertView *pwAlert = [[UIAlertView alloc] initWithTitle:@"请输入密码" message:@"密码不能为空！请输入密码。" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [pwAlert show];
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [password resignFirstResponder];//隐藏键盘
    return YES;
}

@end
