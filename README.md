# sample ios landscape
[![License](http://img.shields.io/badge/License-MIT-green.svg?style=flat)](https://github.com/ClintJang/sample-ios-landscape/blob/master/LICENSE) [![Swift 4](https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat)](https://swift.org) 

## Description
Just .. Landscape Swift Sample

Links to the same "Objective-C" source: https://github.com/ClintJang/sample-ios-landscape/tree/master/ObjectiveC/JWSLandscapeObjectiveC/

# Info
## Result Image

<img width="325" height="667" src="/Image/gif_00.gif"></img>

## Setting
<img width="518" height="217" src="/Image/setting_00.png"></img>

## Source
- AppDelegate.swift
<pre><code>

    func supportedInterfaceOrientations(for window: UIWindow?) -> UIInterfaceOrientationMask {
        return .all
    }

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        
        if (DataManger.shared.isEnableLandscape) {
            // If the UIViewController should be able to rotate at this time
            return .all
        }
        else {
            // A UIViewController that only supports portrait
            return .portrait
        }
    }

</code></pre>

- BaseViewController.swift
<pre><code>

class BaseViewController: UIViewController {
    
	..

    override var shouldAutorotate: Bool {
        return DataManger.shared.isEnableLandscape  // As an internal option if needed
    }
    
    @IBAction func onClose(_ sender: Any) {
        DataManger.shared.isEnableLandscape = false
        self.dismiss(animated: true) {
            
        }
    }
}

</code></pre>

- DataManger.swift
<pre><code>

final class DataManger {
    static let shared = DataManger()
    
    final var isEnableLandscape:Bool = false    // Manage landscapes.
}
</code></pre>


By default, the UIViewController class inherits and uses the baseviewcontroller.

- ViewController.swift, LandscopeController.swift
<pre><code>

class ViewController: BaseViewController {

    ...
    
    @IBAction func showLandscopeController(_ sender: Any) {
        DataManger.shared.isEnableLandscape = true
        let controller:UIViewController = (self.storyboard?.instantiateViewController(withIdentifier: "LandscopeController"))!
        self.present(controller, animated: true) {
            
        }
    }
}

class LandscopeController: BaseViewController {
 	...   
}

</code></pre>
