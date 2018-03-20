//
//  BaseViewController.m
//  JWSLandscapeObjectiveC
//
//  Created by Clint on 2018. 1. 10..
//  Copyright © 2018년 clintjang. All rights reserved.
//

#import "BaseViewController.h"
#import "DataManager.h"

@interface BaseViewController ()
// Reset rotation related settings
- (void)setDefaultOrientations;
@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([DataManager sharedManager].isEnableLandscape == YES) return YES;
    return (UIInterfaceOrientationIsPortrait(interfaceOrientation));
}

-  (UIInterfaceOrientationMask) supportedInterfaceOrientations
{
    if ([DataManager sharedManager].isEnableLandscape == YES)
    {
        if ([DataManager sharedManager].forcedLandscape == YES)
        {
            return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight;
        }
        return UIInterfaceOrientationMaskAll;
    }
    return UIInterfaceOrientationMaskPortrait;
}

- (IBAction)onClose:(id)sender {
    [self setDefaultOrientations];

    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (void)setDefaultOrientations {
    [DataManager sharedManager].isEnableLandscape = NO;
    [DataManager sharedManager].forcedLandscape = NO;
}
@end
