//
//  CustomCellBackground.swift
//  bookmaker
//
//  Created by Admin on 29.08.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit
class CustomCellBackground: UIView {
    
    override func drawRect(rect: CGRect) {
        
        let context  = UIGraphicsGetCurrentContext()
        
        let lightBlue = UIColor(red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0).CGColor
        let lightBlue1  = UIColor(red: 41/255, green: 128/255, blue: 185/255, alpha: 1.0).CGColor
        
        
        

        let colors = [lightBlue1,lightBlue]
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let paperRect = CGGradientCreateWithColors(colorSpace, colors, [0.5,1.0])
        
        let startPoint = CGPoint.init(x: 0.0, y: 0.0)
        let endPoint = CGPoint.init(x: 0.0, y: self.bounds.height)
        
        CGContextDrawLinearGradient(context, paperRect, startPoint, endPoint, CGGradientDrawingOptions.DrawsBeforeStartLocation)
        
    }
    
}