//
//  ViewController.swift
//  Test sentry
//
//  Created by William Santoso on 21/02/24.
//

import UIKit
import Sentry
//import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let button = UIButton(type: .roundedRect)
        button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
        button.setTitle("Test Crash", for: [])
        button.addTarget(self, action: #selector(self.crashButtonTapped(_:)), for: .touchUpInside)
        view.addSubview(button)
    }

    @IBAction func buttonTapped(_ sender: Any) {
        SentrySDK.capture(message: "test")
    }
    
    
    @IBAction func crashButtonTapped(_ sender: AnyObject) {
//        Crashlytics.crashlytics().log("test crash")
        let numbers = [0]
        let _ = numbers[1]
    }
}

