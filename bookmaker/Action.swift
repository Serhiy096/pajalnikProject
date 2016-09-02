//
//  Action.swift
//  bookmaker
//
//  Created by Admin on 27.08.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import Foundation
class Action: NSObject {
    
    var action_id : NSInteger
    var bets : NSArray
    var status : Bool
    var actionType : String
    var stack : NSInteger
    var proffit : Double
    
    override init() {
        self.action_id  = 1
        self.bets = [1,3,4]
        self.status = false
        self.actionType = "express"
        self.stack = 10
        self.proffit = 23.1
    }
    
    
}