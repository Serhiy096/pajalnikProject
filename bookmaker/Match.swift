//
//  Match.swift
//  bookmaker
//
//  Created by Admin on 27.08.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import Foundation
class Match: NSObject {
    
    var matchID : NSInteger
    
    var date : String
    var hosts : String
    var guests : String
    
    override init() {
        self.matchID = 1
        self.date = "27.08.2016"
        self.guests = "fdfd"
        self.hosts = "fdfd"
    }
    
}