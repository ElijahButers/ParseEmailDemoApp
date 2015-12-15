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
    
    var loginController: PFLogInViewController!
    var signupController: PFSignUpViewController!

    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if PFUser.currentUser() == nil {
            
            self.loginController = PFLogInViewController()
            self.loginController.delegate = self
            self.loginController.fields = [.UsernameAndPassword, .LogInButton, .SignUpButton, .PasswordForgotten, .DismissButton]
            
            self.signupController = PFSignUpViewController()
            self.signupController.delegate = self
            self.loginController.signUpController = self.signupController
            
            self.presentViewController(self.loginController, animated: true, completion: nil)
                
        }
        else {
            
        }
        }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

