//
//  DataManager.h
//  JWSLandscapeObjectiveC
//
//  Created by Clint on 2018. 1. 10..
//  Copyright © 2018년 clintjang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject
@property(nonatomic, assign) BOOL isEnableLandscape;    // Allow rotation
@property(nonatomic, assign) BOOL forcedLandscape;      // Force landscape mode

+ (DataManager *)sharedManager;
@end
