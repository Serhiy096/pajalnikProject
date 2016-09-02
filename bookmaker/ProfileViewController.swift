//
//  ProfileViewController.swift
//  bookmaker
//
//  Created by Admin on 30.08.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit


class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    let cEventListViewController = "EventListViewController"
    let cLoginViewController = "LoginViewController"
    let cAdminViewController = "AdminViewController"
    
    
    
       
    
    override func viewDidLoad() {
        self.storyboard?.instantiateViewControllerWithIdentifier(cEventListViewController).childViewControllers
        self.storyboard?.instantiateViewControllerWithIdentifier(cAdminViewController).childViewControllers

        
        if self.revealViewController() != nil {
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    
    

    override func viewWillAppear(animated: Bool) {
        
        self.navigationController?.navigationBarHidden = true
    }
    
 
    @IBAction func allEventListAction(sender: AnyObject) {
        
        self.storyboard?.instantiateViewControllerWithIdentifier(cEventListViewController).childViewControllers
        self.navigationController?.pushViewController((self.storyboard?.instantiateViewControllerWithIdentifier(cEventListViewController))!, animated: true)

    }
    @IBAction func logoutAction(sender: AnyObject) {
        self.storyboard?.instantiateViewControllerWithIdentifier(cLoginViewController).childViewControllers
        self.navigationController?.pushViewController((self.storyboard?.instantiateViewControllerWithIdentifier(cLoginViewController))!, animated: true)
        
    }
   
    @IBAction func moveToAdminAction(sender: AnyObject) {
        
        self.storyboard?.instantiateViewControllerWithIdentifier(cAdminViewController).childViewControllers
        self.navigationController?.pushViewController((self.storyboard?.instantiateViewControllerWithIdentifier(cAdminViewController))!, animated: true)
    }
}
