//
//  ViewController.swift
//  Swift2.0-ParseEmailDemoApp
//
//  Created by User on 12/15/15.
//  Copyright © 2015 Elijah Buters. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class ViewController: UIViewController, PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate {
    
    var logincontroller: PFLogInViewController!
    var singupController: PFSignUpViewController!

    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

