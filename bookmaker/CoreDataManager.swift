//
//  CoreDataManager.swift
//  bookmaker
//
//  Created by Admin on 27.08.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class CoreDataManager: NSObject {
    
    static let sharedInstance  = CoreDataManager()
    
    var current_user = User()
    
    
    override init() {
        
    }
    
    func getCurrentUser() ->User{
    
    return self.current_user
    
    }
    
}