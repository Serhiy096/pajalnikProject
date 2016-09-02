//
//  SidebarViewController.swift
//  bookmaker
//
//  Created by Admin on 01.09.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class SidebarViewController: UITableViewController {
    
    var menuItems =  [String]()
    
    
    override func viewDidLoad() {
        menuItems = ["PROFILE","MATCHES","NEW EVENT","SETTINGS","LOGOUT"]
    }
    override func viewWillAppear(animated: Bool) {
       self.tableView.reloadData()
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    
}
