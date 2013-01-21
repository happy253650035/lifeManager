//
//  LoginViewController.h
//  lifeManager
//
//  Created by yin yi on 2013/01/13.
//  Copyright (c) 2013年 yin yi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UITextFieldDelegate>

@property(nonatomic,retain)IBOutlet UITextField *password;

-(IBAction)press:(id)sender;

@end
