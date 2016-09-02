//
//  AdminViewController.swift
//  bookmaker
//
//  Created by Admin on 29.08.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit
class AdminViewController: UIViewController {
    let gradientLayer = CAGradientLayer()
    
    let cEventListViewController = "EventListViewController"
    
    @IBOutlet weak var guestsTeamField: UITextField!
    @IBOutlet weak var hostsTeamField: UITextField!
    
    @IBOutlet weak var hostsWinnerField: UITextField!
    @IBOutlet weak var deadHeatField: UITextField!
    @IBOutlet weak var guestsWinnerField: UITextField!
    
    
    @IBOutlet weak var lessTotalField: UITextField!
    @IBOutlet weak var totalField: UITextField!
    @IBOutlet weak var moreTotalField: UITextField!
    
    @IBOutlet weak var lessITotalField: UITextField!
    @IBOutlet weak var iTotalField: UITextField!
    @IBOutlet weak var moreITotalField: UITextField!
    
    @IBOutlet weak var saveMatch: UIButton!
    override func viewDidLoad() {
        
        if self.revealViewController() != nil {
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        saveMatch.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(AdminViewController.saveMatchAction)))
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
    }
    override func viewWillDisappear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
    }
    
    
    func saveMatchAction()  {
        self.revealViewController().pushFrontViewController(self.storyboard?.instantiateViewControllerWithIdentifier(cEventListViewController), animated: true)
    }
    
    
    
}