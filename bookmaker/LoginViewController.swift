//
//  LoginViewController.swift
//  bookmaker
//
//  Created by Admin on 27.08.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    let gradientLayer = CAGradientLayer()
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    let cEventListViewController = "EventListViewController"
    let cAdminViewController = "AdminViewController"
    let cProfileViewController = "ProfileViewController"
    let cSWRevealViewController = "SWRevealViewController"
    
    override func viewDidLoad() {
        
        self.storyboard?.instantiateViewControllerWithIdentifier(cEventListViewController).childViewControllers
        self.storyboard?.instantiateViewControllerWithIdentifier(cAdminViewController).childViewControllers
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginSegue" {
           segue.destinationViewController
        }
        
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
    }
    
    
    
    @IBAction func loginAction(sender: AnyObject) {
        self.navigationController?.pushViewController((self.storyboard?.instantiateViewControllerWithIdentifier(cSWRevealViewController))!, animated: true)
    }
    
    
}
