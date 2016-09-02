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
    override func viewDidLoad() {
        
        self.storyboard?.instantiateViewControllerWithIdentifier(cEventListViewController).childViewControllers
        self.storyboard?.instantiateViewControllerWithIdentifier(cAdminViewController).childViewControllers
        let lightBlue  = UIColor(colorLiteralRed: 51/255, green: 150/255, blue: 1, alpha: 1)
        self.view.backgroundColor = lightBlue
            
        
        gradientLayer.frame = self.view.bounds

        let color1 = lightBlue.CGColor as CGColorRef
        let color3 = UIColor.clearColor().CGColor as CGColorRef
    
        gradientLayer.colors = [color3, color1]
        
        gradientLayer.locations = [0.0,1.0]
                
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
    }
    
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
    }
    
    
    
    @IBAction func loginAction(sender: AnyObject) {
        self.storyboard?.instantiateViewControllerWithIdentifier(cProfileViewController).childViewControllers
        self.navigationController?.pushViewController((self.storyboard?.instantiateViewControllerWithIdentifier(cProfileViewController))!, animated: true)
    }
    
    
}
