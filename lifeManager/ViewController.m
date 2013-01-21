//
//  ViewController.m
//  lifeManager
//
//  Created by yin yi on 2013/01/13.
//  Copyright (c) 2013年 yin yi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myTableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [myTableView setDelegate:self];
    [myTableView setDataSource:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    switch (indexPath.item) {
        case 0:{
            static NSString *jiaWu = @"jiaWu";
            
            cell = [tableView dequeueReusableCellWithIdentifier:jiaWu];
            if (cell == nil) {
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier: jiaWu];
            }
            
            // Config cell
            cell.textLabel.font = [UIFont fontWithName:@"KaiTi_GB2312" size:18];
            cell.textLabel.text = @"家务琐事";
            break;
        }
        case 1:{
            static NSString *guanXin = @"guanXin";
            
            cell = [tableView dequeueReusableCellWithIdentifier:guanXin];
            if (cell == nil) {
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier: guanXin];
            }
            
            // Config your cell
            cell.textLabel.font = [UIFont fontWithName:@"KaiTi_GB2312" size:18];
            cell.textLabel.text = @"互相关心";
            break;
        }
        case 2:{
            static NSString *ziLi = @"ziLi";
            
            cell = [tableView dequeueReusableCellWithIdentifier:ziLi];
            if (cell == nil) {
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier: ziLi];
            }
            
            // Config your cell
            cell.textLabel.font = [UIFont fontWithName:@"KaiTi_GB2312" size:18];
            cell.textLabel.text = @"自理能力";
            break;
        }
        case 3:{
            static NSString *jianShen = @"jianShen";
            
            cell = [tableView dequeueReusableCellWithIdentifier:jianShen];
            if (cell == nil) {
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier: jianShen];
            }
            
            // Config your cell
            cell.textLabel.font = [UIFont fontWithName:@"KaiTi_GB2312" size:18];
            cell.textLabel.text = @"健身相关";
            break;
        }
        case 4:{
            static NSString *jiaTing = @"jiaTing";
            
            cell = [tableView dequeueReusableCellWithIdentifier:jiaTing];
            if (cell == nil) {
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier: jiaTing];
            }
            
            // Config your cell
            cell.textLabel.font = [UIFont fontWithName:@"KaiTi_GB2312" size:18];
            cell.textLabel.text = @"家庭关怀";
            break;
        }
        default:
            break;
    }
    
    return cell;
}

@end
