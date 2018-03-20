//
//  ViewController.swift
//  JWSLandscape
//
//  Created by Clint on 2017. 10. 17..
//  Copyright © 2017년 Clint. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showLandscapeController(_ sender: Any) {
        DataManger.shared.isEnableLandscape = true
        let controller:UIViewController = (self.storyboard?.instantiateViewController(withIdentifier: "LandscapeController"))!
        self.present(controller, animated: true) {
            
        }
    }
    
}

