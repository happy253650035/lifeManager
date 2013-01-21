//
//  resManager.m
//  lifeManager
//
//  Created by yin yi on 2013/01/13.
//  Copyright (c) 2013年 yin yi. All rights reserved.
//

#import "resManager.h"

@implementation resManager

@synthesize myData,myStoryboard;

static resManager* instance = nil;

+(resManager*)getInstance{
    if (instance == nil) {
        instance = [[resManager alloc] init];
    }
    return instance;
}

-(id)init{
    if (self = [super init]) {
        self.myData = [NSUserDefaults standardUserDefaults];
        self.myStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
    }
    return self;
}

@end
