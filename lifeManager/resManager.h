//
//  resManager.h
//  lifeManager
//
//  Created by yin yi on 2013/01/13.
//  Copyright (c) 2013年 yin yi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface resManager : NSObject

@property(nonatomic,retain)NSUserDefaults* myData;
@property(nonatomic,retain)UIStoryboard* myStoryboard;

+(resManager*)getInstance;

@end
