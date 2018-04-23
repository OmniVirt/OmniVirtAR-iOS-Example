//
//  ViewController.swift
//  OmniVirtAR Sample App
//
//  Copyright © 2018 OmniVirt. All rights reserved.
//

import UIKit
import OmniVirtAR

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 25
    }
    
    @IBAction func onButtonTouchUpInside(_ sender: Any) {
        let adView = OVARInterstitial(adUnitID: "26")
        adView.present()
    }
    
}

