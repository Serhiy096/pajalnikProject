//
//  BackgroundRect.swift
//  bookmaker
//
//  Created by Admin on 30.08.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit
class BackgroungRect : UIView {
    
    
    override func drawRect(rect: CGRect) {

        let startColor: UIColor = UIColor(red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0)
        //        rgb(52, 152, 219)
        
        let endColor: UIColor = UIColor(red: 41/255, green: 128/255, blue: 185/255, alpha: 1.0)
        //        rgb(41, 128, 185)
        let screenWidth = rect.width
        let screenHeight = rect.height
        let offset :CGFloat = 180
        
        
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let colors = [startColor.CGColor, endColor.CGColor]
        let context = UIGraphicsGetCurrentContext()
        let colorLocations : [CGFloat] = [0.0 , 1.0]
        let gradient = CGGradientCreateWithColors(colorSpace, colors, colorLocations)
        
        
        
        let backgroungPath = UIBezierPath()
        
        
        let topBackgroungPath = UIBezierPath()
        
        topBackgroungPath.moveToPoint(CGPoint(x: 0, y: 0))
        topBackgroungPath.addLineToPoint(CGPoint(x: 0, y: offset))
        topBackgroungPath.addLineToPoint(CGPoint(x: screenWidth, y: offset))
        topBackgroungPath.addLineToPoint(CGPoint(x: screenWidth, y: 0))
        
        
        topBackgroungPath.closePath()
        
        UIColor(red: 41/255, green: 128/255, blue: 185/255, alpha: 1.0).setFill()
        //        rgb(41, 128, 185)
        topBackgroungPath.fill()

        let startPoint = CGPoint(x: 0, y: offset)
        let endPoint = CGPoint(x: screenWidth/2, y: screenHeight)
        let gradientStartPoint = CGPoint(x: screenWidth/2, y: screenWidth)
        
        backgroungPath.moveToPoint(startPoint)
        backgroungPath.addLineToPoint(CGPoint(x: 0, y:screenHeight))
        backgroungPath.addLineToPoint(CGPoint(x: screenWidth, y:screenHeight))
        backgroungPath.addLineToPoint(CGPoint(x: screenWidth , y:screenHeight))
        backgroungPath.addLineToPoint(CGPoint(x: screenWidth , y:offset))
        backgroungPath.addLineToPoint(CGPoint(x: screenWidth/2, y: offset/2))
        
        backgroungPath.closePath()
        
        
        backgroungPath.addClip()
        
        
        
        
        
        CGContextDrawLinearGradient(context, gradient, gradientStartPoint, endPoint, CGGradientDrawingOptions.DrawsBeforeStartLocation)
        
        
//        UIColor.blueColor().setFill()
//        
//        backgroungPath.fill()
        
        
        
        
    }
    
}
