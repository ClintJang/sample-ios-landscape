//
//  BaseViewController.swift
//  JWSLandscape
//
//  Created by Clint on 2017. 10. 17..
//  Copyright © 2017년 Clint. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override var shouldAutorotate: Bool {
        return DataManger.shared.isEnableLandscape  // As an internal option if needed
    }
    
    @IBAction func onClose(_ sender: Any) {
        DataManger.shared.isEnableLandscape = false
        self.dismiss(animated: true) {
            
        }
    }
    
//    override func shouldAutomaticallyForwardRotationMethods() -> Bool {
//        return true
//    }
}

