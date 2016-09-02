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
    
    override func viewDidLoad() {
        
        
        
        self.addSaveButton()
        
        self.navigationController?.navigationBarHidden = false
    }
    override func viewWillDisappear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
    }
    
    func addSaveButton(){
        let saveButton : UIBarButtonItem  = UIBarButtonItem.init(title: "Save", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(AdminViewController.saveMatch))
        
        self.navigationItem.rightBarButtonItem = saveButton
        
    }
    
    func saveMatch()  {
    // do somethink
     self.navigationController?.popViewControllerAnimated(true)
    }
    
    
    
}