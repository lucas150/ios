//
//  ViewController.swift
//  IOS
//
//  Created by Henil Gandhi on 05/02/25.
//

import UIKit
import CleverTapSDK

class ViewController: UIViewController {

    @IBOutlet weak var OnuserLoin: UIButton!
    @IBOutlet weak var event: UIButton!
    @IBAction func OnUserLogin(_ sender: Any) {
        let profile: Dictionary<String, AnyObject> = [
            //Update pre-defined profile properties
            "Name": "Henil" as AnyObject,
            "Email": "jhiax@gmail.com" as AnyObject,
              "Identity": 8878 as AnyObject,
            //Update custom profile properties
            "Plan type": "Silver" as AnyObject,
            "Favorite Food": "Pizza" as AnyObject,
        ]

        CleverTap.sharedInstance()?.onUserLogin(profile)
    }
    
    @IBAction func eventpush(_ sender: Any) {
        
        CleverTap.sharedInstance()?.recordEvent("Product viewed")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

