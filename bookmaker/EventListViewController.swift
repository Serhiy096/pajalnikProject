//
//  EventListViewController.swift
//  bookmaker
//
//  Created by Admin on 26.08.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class EventListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var userBalanceLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var table: UITableView!
    
    let cellIdentifire = "EventCell"
    
    
    
    let data = [["key" : "value"],["key" : "value"],["key" : "value"],["key" : "value"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        let currentUser = CoreDataManager.sharedInstance.getCurrentUser()
        self.userNameLabel.text = currentUser.userName
        let money = String(currentUser.userBalance)
        self.userBalanceLabel.text = "\(money) $"
 
        self.table.delegate = self
        self.table.dataSource = self
        self.navigationController?.navigationBarHidden = false
        if self.revealViewController() != nil {
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
    }
    
    
    override func viewWillAppear(animated: Bool) {
        table.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifire as String) as! EventCell

        if !(cell.backgroundView is CustomCellBackground) {
            cell.backgroundColor = UIColor.whiteColor()
            cell.backgroundView = CustomCellBackground()
            
        }
        
        let row = (data as NSArray).objectAtIndex(indexPath.row)
        
        cell.date.text = row.valueForKey("key") as? String
        cell.team1.text = "Hoverla"
        cell.team2.text = "Barca"
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
}
