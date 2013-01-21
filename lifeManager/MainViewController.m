//
//  MainViewController.m
//  lifeManager
//
//  Created by yin yi on 2013/01/19.
//  Copyright (c) 2013年 yin yi. All rights reserved.
//

#import "MainViewController.h"
#import "resManager.h"

#define SCOREITEM 0
#define REWARDITEM 1

@interface MainViewController ()

@end

@implementation MainViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)pressButton:(id)sender{
    if ([[resManager getInstance].myData objectForKey:ISNEWACCOUNT] != nil) {
        UIViewController* nextViewController = [[resManager getInstance].myStoryboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
        [self presentViewController:nextViewController animated:YES completion:nil];
    }else{
        UIViewController* nextViewController = [[resManager getInstance].myStoryboard instantiateViewControllerWithIdentifier:@"RegisterViewController"];
        [self presentViewController:nextViewController animated:YES completion:nil];
    }
}

-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    if (item.tag == SCOREITEM) {
        UIViewController* nextViewController = [[resManager getInstance].myStoryboard instantiateViewControllerWithIdentifier:@"ScoreViewController"];
        [self presentViewController:nextViewController animated:YES completion:nil];
    }else if (item.tag == REWARDITEM){
        UIViewController* nextViewController = [[resManager getInstance].myStoryboard instantiateViewControllerWithIdentifier:@"RewardViewController"];
        [self presentViewController:nextViewController animated:YES completion:nil];
    }
}

@end
