//
//  CustomLoginBackground.swift
//  bookmaker
//
//  Created by Admin on 29.08.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit
class CustomLoginBackground: UIView {
    
    override func drawRect(rect: CGRect) {
        
        
        let context = UIGraphicsGetCurrentContext()
        
        
        let clearColor = UIColor.clearColor().CGColor
        let lightBlue  = UIColor(colorLiteralRed: 51/255, green: 150/255, blue: 1, alpha: 1).CGColor
        
        
        
        
        let colors = [lightBlue,clearColor]
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let paperRect = CGGradientCreateWithColors(colorSpace, colors, [0.0,1.0])
        
        let startPoint = CGPoint.init(x: 0.0, y: 0.0)
        let endPoint = CGPoint.init(x: 0.0, y: self.bounds.height)
        
        CGContextDrawLinearGradient(context, paperRect, startPoint, endPoint, CGGradientDrawingOptions.DrawsBeforeStartLocation)

        
        
    }
    
    
}