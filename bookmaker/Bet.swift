//
//  Bet.swift
//  bookmaker
//
//  Created by Admin on 27.08.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import Foundation
class Bet: NSObject {
    var bet_id : NSInteger
    var event : String
    var koefficient : Double
    
    
    override init() {
        
        self.event = "winner"
        self.koefficient = 2.3
        self.bet_id  = 1
    }
    
}