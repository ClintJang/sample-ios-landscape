# JWSLandscape
[![License](http://img.shields.io/badge/License-MIT-green.svg?style=flat)](https://github.com/clintjang/JWSBoltsSwiftSample/blob/master/LICENSE) [![objective-c](https://img.shields.io/badge/objective-Apple-orange.svg?style=flat)](https://swift.org) 

## Description
Just .. Landscape Objective-C Sample 

# Info
## Result Image

<img width="325" height="667" src="/Image/gif_00.gif"></img>


## Setting
<img width="518" height="217" src="/Image/setting_00.png"></img>

## Source
- AppDelegate.m
<pre><code>

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(nullable UIWindow *)window {
    return UIInterfaceOrientationMaskAll;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientationsForWindow:(nullable UIWindow *)window {
    if ([DataManager sharedManager].isEnableLandscape == YES) {
        // If the UIViewController should be able to rotate at this time
        return UIInterfaceOrientationMaskAll;
    }
    else {
        // A UIViewController that only supports portrait
        return UIInterfaceOrientationMaskPortrait;
    }
}

</code></pre>

- BaseViewController.m
<pre><code>

class BaseViewController: UIViewController {
    
	..

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([DataManager sharedManager].isEnableLandscape == YES) return YES;
    return (UIInterfaceOrientationIsPortrait(interfaceOrientation));
}

-  (UIInterfaceOrientationMask) supportedInterfaceOrientations
{
    if ([DataManager sharedManager].isEnableLandscape == YES) return UIInterfaceOrientationMaskAll;
    return UIInterfaceOrientationMaskPortrait;
}

- (IBAction)onClose:(id)sender {
    [DataManager sharedManager].isEnableLandscape = NO;
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}


</code></pre>

- DataManger.h, m
<pre><code>

@interface DataManager : NSObject
@property(nonatomic, assign) BOOL isEnableLandscape;
+ (DataManager *)sharedManager;
@end

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
</code></pre>


By default, the UIViewController class inherits and uses the baseviewcontroller.

- ViewController.m, LandscopeController.m
<pre><code>

@implementation ViewController

    ...
    
- (IBAction)showLandscapeController:(id)sender {
    [DataManager sharedManager].isEnableLandscape = YES;
    LandscopeController *controler = [self.storyboard instantiateViewControllerWithIdentifier:@"LandscopeController"];
    [self presentViewController:controler animated:true completion:^{
        
    }];
}

@implementation LandscopeController
...

</code></pre>