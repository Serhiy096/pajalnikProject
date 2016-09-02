//
//  UserBet.swift
//  bookmaker
//
//  Created by Admin on 27.08.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import Foundation
class UserBet: NSObject {
    
    var userID : NSInteger
    var matchID : NSInteger
    var actionID : NSInteger
    
    
    override init() {
        self.userID = 1
        self.matchID = 1
        self.actionID = 1
    }
    
    
    
}