//
//  User.swift
//  bookmaker
//
//  Created by Admin on 26.08.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import Foundation
class User: NSObject {
    
    
    var userID : NSInteger
    var userName : String
    var userLogin : String
    //var userPassword : String
    var userBalance : Double
    
    
    
    
    override init() {
            self.userID = 1
            self.userName = "Leshij"
            self.userLogin = "fdf"
            self.userBalance = 12.3
    }
    
    
    
    
}