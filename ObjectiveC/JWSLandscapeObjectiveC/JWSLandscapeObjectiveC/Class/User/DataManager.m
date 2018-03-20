//
//  DataManager.m
//  JWSLandscapeObjectiveC
//
//  Created by Clint on 2018. 1. 10..
//  Copyright © 2018년 clintjang. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager
+ (DataManager *)sharedManager
{
    static DataManager *_sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSLog(@"DataManager Singleton");
        _sharedManager = [[DataManager alloc] init];
    });
    
    return _sharedManager;
}
@end
