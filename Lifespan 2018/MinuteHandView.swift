//
//  MinuteHandView.swift
//  Lifespan 2018
//
//  Created by John Pavley on 2/22/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import UIKit

extension FloatingPoint {
    var degreesToRadians: Self {
        return self * .pi / 180
        
    }
    var radiansToDegrees: Self {
        return self * 180 / .pi
    }
}

class MinuteHandView: UIView {
    
    // MARK:- Properties -
    
    /// On the main storyboard the clock view is 640 x 640.
    let canvasSize: CGFloat = 640.0
    
    // Need to animate the second, hour, and minuet hand independently
    
    let minuteHandPathRef = CGMutablePath()
    
    // MARK:- Helper Functions -
    
    // MARK:- Helper Functions -
    
    private func calcScaleFactor(viewWidth: CGFloat) -> CGFloat {
        let scaleFactor: CGFloat = viewWidth/canvasSize
        return scaleFactor
    }

        
    // MARK:- Drawing Code -
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        // Must be called in the following sequence:
        // drawFace(), drawMinuetHand(), darwHourHand(), drawSecondHand()
        
        drawMinuteHand()
        self.transform = CGAffineTransform(rotationAngle: CGFloat(90).degreesToRadians)
        
    }
    
    private func drawMinuteHand() {
        guard let ctx = UIGraphicsGetCurrentContext() else { return }
        // enable the following lines for flipped coordinate systems
        // ctx.translateBy(x: 0, y: self.bounds.size.height)
        // ctx.scaleBy(x: 1, y: -1)
        
        let scaleFactor: CGFloat = calcScaleFactor(viewWidth: self.bounds.width)
        ctx.scaleBy(x: scaleFactor, y: scaleFactor)
        
        /*  Shape   */
        minuteHandPathRef.move(to: CGPoint(x: 308.028, y: 367.873))
        minuteHandPathRef.addCurve(to: CGPoint(x: 308.028, y: 329.796), control1: CGPoint(x: 308.028, y: 367.873), control2: CGPoint(x: 308.028, y: 329.796))
        minuteHandPathRef.addCurve(to: CGPoint(x: 316.009, y: 323.45), control1: CGPoint(x: 308.028, y: 329.796), control2: CGPoint(x: 316.009, y: 323.45))
        minuteHandPathRef.addCurve(to: CGPoint(x: 316.009, y: 317.104), control1: CGPoint(x: 316.009, y: 323.45), control2: CGPoint(x: 316.009, y: 317.104))
        minuteHandPathRef.addCurve(to: CGPoint(x: 308.028, y: 310.758), control1: CGPoint(x: 316.009, y: 317.104), control2: CGPoint(x: 308.028, y: 310.758))
        minuteHandPathRef.addCurve(to: CGPoint(x: 316.009, y: 101.333), control1: CGPoint(x: 308.028, y: 310.758), control2: CGPoint(x: 316.009, y: 101.333))
        minuteHandPathRef.addCurve(to: CGPoint(x: 323.991, y: 101.333), control1: CGPoint(x: 316.009, y: 101.333), control2: CGPoint(x: 323.991, y: 101.333))
        minuteHandPathRef.addCurve(to: CGPoint(x: 331.972, y: 310.758), control1: CGPoint(x: 323.991, y: 101.333), control2: CGPoint(x: 331.972, y: 310.758))
        minuteHandPathRef.addCurve(to: CGPoint(x: 323.991, y: 317.104), control1: CGPoint(x: 331.972, y: 310.758), control2: CGPoint(x: 323.991, y: 317.104))
        minuteHandPathRef.addCurve(to: CGPoint(x: 323.991, y: 323.45), control1: CGPoint(x: 323.991, y: 317.104), control2: CGPoint(x: 323.991, y: 323.45))
        minuteHandPathRef.addCurve(to: CGPoint(x: 331.972, y: 329.796), control1: CGPoint(x: 323.991, y: 323.45), control2: CGPoint(x: 331.972, y: 329.796))
        minuteHandPathRef.addCurve(to: CGPoint(x: 331.972, y: 367.873), control1: CGPoint(x: 331.972, y: 329.796), control2: CGPoint(x: 331.972, y: 367.873))
        minuteHandPathRef.addCurve(to: CGPoint(x: 308.028, y: 367.873), control1: CGPoint(x: 331.972, y: 367.873), control2: CGPoint(x: 308.028, y: 367.873))
        minuteHandPathRef.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0.498, blue: 0.075, alpha: 1)
        ctx.addPath(minuteHandPathRef)
        ctx.fillPath()
        
    }
    
    


    

}
