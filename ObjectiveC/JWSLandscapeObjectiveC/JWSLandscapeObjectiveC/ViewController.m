//
//  ViewController.m
//  JWSLandscapeObjectiveC
//
//  Created by Clint on 2018. 1. 10..
//  Copyright © 2018년 clintjang. All rights reserved.
//

#import "ViewController.h"
#import "LandscapeController.h"
#import "DataManager.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showLandscapeController:(id)sender {
    [DataManager sharedManager].isEnableLandscape = YES;
    [DataManager sharedManager].forcedLandscape = YES;  
    LandscapeController *controler = [self.storyboard instantiateViewControllerWithIdentifier:@"LandscapeController"];
    [self presentViewController:controler animated:true completion:^{
        
    }];
}

@end
