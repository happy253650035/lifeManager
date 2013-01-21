//
//  LoginViewController.m
//  lifeManager
//
//  Created by yin yi on 2013/01/13.
//  Copyright (c) 2013年 yin yi. All rights reserved.
//

#import "LoginViewController.h"
#import "resManager.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize password;

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
	// Do any additional setup after loading the view.
    //设置密码文本框相关属性
    [password setSecureTextEntry:YES];
    [password setReturnKeyType:UIReturnKeyDone];
    [password setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)press:(id)sender{
    NSString* inputPw;
    if ([password.text isEqualToString:inputPw]) {
        //跳转到主页
        UIViewController* nextController = [[resManager getInstance].myStoryboard instantiateViewControllerWithIdentifier:@"DeleteRoleViewController"];
        [self presentViewController:nextController animated:YES completion:nil];
    }else{
        UIAlertView *pwAlert = [[UIAlertView alloc] initWithTitle:@"请输入密码" message:@"密码不正确！请重新输入密码。" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [pwAlert show];
    }
}

//Deprecated
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    [segue destinationViewController];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [password resignFirstResponder];//隐藏键盘
    return YES;
}

@end
