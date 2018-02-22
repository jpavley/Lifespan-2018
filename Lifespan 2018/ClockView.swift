//
//  ClockView.swift
//  Lifespan 2018
//
//  Created by John Pavley on 2/21/18.
//  Copyright © 2018 jpavley12. All rights reserved.
//

import UIKit

class ClockView: UIView {
    
    let canvasSize: CGFloat = 640.0
    
    func calcScaleFactor(viewWidth: CGFloat) -> CGFloat {
        let scaleFactor: CGFloat = viewWidth/canvasSize
        return scaleFactor
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        drawFace()
        drawMinuteHand()
        drawHourHand()
        drawSecondHand()
        
    }
        
    func drawSecondHand() {
        guard let ctx = UIGraphicsGetCurrentContext() else { return }
        // enable the following lines for flipped coordinate systems
        // ctx.translateBy(x: 0, y: self.bounds.size.height)
        // ctx.scaleBy(x: 1, y: -1)
        
        /*  Shape   */
        let pathRef = CGMutablePath()
        pathRef.move(to: CGPoint(x: 314.679, y: 367.873))
        pathRef.addCurve(to: CGPoint(x: 314.679, y: 329.796), control1: CGPoint(x: 314.679, y: 367.873), control2: CGPoint(x: 314.679, y: 329.796))
        pathRef.addCurve(to: CGPoint(x: 318.226, y: 323.45), control1: CGPoint(x: 314.679, y: 329.796), control2: CGPoint(x: 318.226, y: 323.45))
        pathRef.addCurve(to: CGPoint(x: 318.226, y: 317.104), control1: CGPoint(x: 318.226, y: 323.45), control2: CGPoint(x: 318.226, y: 317.104))
        pathRef.addCurve(to: CGPoint(x: 314.679, y: 310.758), control1: CGPoint(x: 318.226, y: 317.104), control2: CGPoint(x: 314.679, y: 310.758))
        pathRef.addCurve(to: CGPoint(x: 318.226, y: 158.449), control1: CGPoint(x: 314.679, y: 310.758), control2: CGPoint(x: 318.226, y: 158.449))
        pathRef.addCurve(to: CGPoint(x: 321.774, y: 158.449), control1: CGPoint(x: 318.226, y: 158.449), control2: CGPoint(x: 321.774, y: 158.449))
        pathRef.addCurve(to: CGPoint(x: 325.321, y: 310.758), control1: CGPoint(x: 321.774, y: 158.449), control2: CGPoint(x: 325.321, y: 310.758))
        pathRef.addCurve(to: CGPoint(x: 321.774, y: 317.104), control1: CGPoint(x: 325.321, y: 310.758), control2: CGPoint(x: 321.774, y: 317.104))
        pathRef.addCurve(to: CGPoint(x: 321.774, y: 323.45), control1: CGPoint(x: 321.774, y: 317.104), control2: CGPoint(x: 321.774, y: 323.45))
        pathRef.addCurve(to: CGPoint(x: 325.321, y: 329.796), control1: CGPoint(x: 321.774, y: 323.45), control2: CGPoint(x: 325.321, y: 329.796))
        pathRef.addCurve(to: CGPoint(x: 325.321, y: 367.873), control1: CGPoint(x: 325.321, y: 329.796), control2: CGPoint(x: 325.321, y: 367.873))
        pathRef.addCurve(to: CGPoint(x: 314.679, y: 367.873), control1: CGPoint(x: 325.321, y: 367.873), control2: CGPoint(x: 314.679, y: 367.873))
        pathRef.closeSubpath()
        
        ctx.setFillColor(red: 0.671, green: 0.082, blue: 0, alpha: 1)
        ctx.addPath(pathRef)
        ctx.fillPath()
    }
    
    func drawHourHand() {
        guard let ctx = UIGraphicsGetCurrentContext() else { return }
        // enable the following lines for flipped coordinate systems
        // ctx.translateBy(x: 0, y: self.bounds.size.height)
        // ctx.scaleBy(x: 1, y: -1)
        
        /*  Shape   */
        let pathRef = CGMutablePath()
        pathRef.move(to: CGPoint(x: 308.028, y: 367.873))
        pathRef.addCurve(to: CGPoint(x: 308.028, y: 329.796), control1: CGPoint(x: 308.028, y: 367.873), control2: CGPoint(x: 308.028, y: 329.796))
        pathRef.addCurve(to: CGPoint(x: 316.009, y: 323.45), control1: CGPoint(x: 308.028, y: 329.796), control2: CGPoint(x: 316.009, y: 323.45))
        pathRef.addCurve(to: CGPoint(x: 316.009, y: 317.104), control1: CGPoint(x: 316.009, y: 323.45), control2: CGPoint(x: 316.009, y: 317.104))
        pathRef.addCurve(to: CGPoint(x: 308.028, y: 310.758), control1: CGPoint(x: 316.009, y: 317.104), control2: CGPoint(x: 308.028, y: 310.758))
        pathRef.addCurve(to: CGPoint(x: 316.009, y: 196.526), control1: CGPoint(x: 308.028, y: 310.758), control2: CGPoint(x: 316.009, y: 196.526))
        pathRef.addCurve(to: CGPoint(x: 323.991, y: 196.526), control1: CGPoint(x: 316.009, y: 196.526), control2: CGPoint(x: 323.991, y: 196.526))
        pathRef.addCurve(to: CGPoint(x: 331.972, y: 310.758), control1: CGPoint(x: 323.991, y: 196.526), control2: CGPoint(x: 331.972, y: 310.758))
        pathRef.addCurve(to: CGPoint(x: 323.991, y: 317.104), control1: CGPoint(x: 331.972, y: 310.758), control2: CGPoint(x: 323.991, y: 317.104))
        pathRef.addCurve(to: CGPoint(x: 323.991, y: 323.45), control1: CGPoint(x: 323.991, y: 317.104), control2: CGPoint(x: 323.991, y: 323.45))
        pathRef.addCurve(to: CGPoint(x: 331.972, y: 329.796), control1: CGPoint(x: 323.991, y: 323.45), control2: CGPoint(x: 331.972, y: 329.796))
        pathRef.addCurve(to: CGPoint(x: 331.972, y: 367.873), control1: CGPoint(x: 331.972, y: 329.796), control2: CGPoint(x: 331.972, y: 367.873))
        pathRef.addCurve(to: CGPoint(x: 308.028, y: 367.873), control1: CGPoint(x: 331.972, y: 367.873), control2: CGPoint(x: 308.028, y: 367.873))
        pathRef.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0.122, blue: 0.51, alpha: 1)
        ctx.addPath(pathRef)
        ctx.fillPath()
        
    }
    
    func drawMinuteHand() {
        guard let ctx = UIGraphicsGetCurrentContext() else { return }
        // enable the following lines for flipped coordinate systems
        // ctx.translateBy(x: 0, y: self.bounds.size.height)
        // ctx.scaleBy(x: 1, y: -1)
        
        /*  Shape   */
        let pathRef = CGMutablePath()
        pathRef.move(to: CGPoint(x: 308.028, y: 367.873))
        pathRef.addCurve(to: CGPoint(x: 308.028, y: 329.796), control1: CGPoint(x: 308.028, y: 367.873), control2: CGPoint(x: 308.028, y: 329.796))
        pathRef.addCurve(to: CGPoint(x: 316.009, y: 323.45), control1: CGPoint(x: 308.028, y: 329.796), control2: CGPoint(x: 316.009, y: 323.45))
        pathRef.addCurve(to: CGPoint(x: 316.009, y: 317.104), control1: CGPoint(x: 316.009, y: 323.45), control2: CGPoint(x: 316.009, y: 317.104))
        pathRef.addCurve(to: CGPoint(x: 308.028, y: 310.758), control1: CGPoint(x: 316.009, y: 317.104), control2: CGPoint(x: 308.028, y: 310.758))
        pathRef.addCurve(to: CGPoint(x: 316.009, y: 101.333), control1: CGPoint(x: 308.028, y: 310.758), control2: CGPoint(x: 316.009, y: 101.333))
        pathRef.addCurve(to: CGPoint(x: 323.991, y: 101.333), control1: CGPoint(x: 316.009, y: 101.333), control2: CGPoint(x: 323.991, y: 101.333))
        pathRef.addCurve(to: CGPoint(x: 331.972, y: 310.758), control1: CGPoint(x: 323.991, y: 101.333), control2: CGPoint(x: 331.972, y: 310.758))
        pathRef.addCurve(to: CGPoint(x: 323.991, y: 317.104), control1: CGPoint(x: 331.972, y: 310.758), control2: CGPoint(x: 323.991, y: 317.104))
        pathRef.addCurve(to: CGPoint(x: 323.991, y: 323.45), control1: CGPoint(x: 323.991, y: 317.104), control2: CGPoint(x: 323.991, y: 323.45))
        pathRef.addCurve(to: CGPoint(x: 331.972, y: 329.796), control1: CGPoint(x: 323.991, y: 323.45), control2: CGPoint(x: 331.972, y: 329.796))
        pathRef.addCurve(to: CGPoint(x: 331.972, y: 367.873), control1: CGPoint(x: 331.972, y: 329.796), control2: CGPoint(x: 331.972, y: 367.873))
        pathRef.addCurve(to: CGPoint(x: 308.028, y: 367.873), control1: CGPoint(x: 331.972, y: 367.873), control2: CGPoint(x: 308.028, y: 367.873))
        pathRef.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0.498, blue: 0.075, alpha: 1)
        ctx.addPath(pathRef)
        ctx.fillPath()
        
    }

    func drawFace() {
        guard let ctx = UIGraphicsGetCurrentContext() else { return }
        // enable the following lines for flipped coordinate systems
        // ctx.translateBy(x: 0, y: self.bounds.size.height)
        // ctx.scaleBy(x: 1, y: -1)
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        
        let scaleFactor: CGFloat = calcScaleFactor(viewWidth: self.bounds.width)
        ctx.scaleBy(x: scaleFactor, y: scaleFactor)
        
        /*  Shape   */
        let pathRef = CGMutablePath()
        pathRef.move(to: CGPoint(x: 320, y: 566))
        pathRef.addCurve(to: CGPoint(x: 74, y: 320), control1: CGPoint(x: 184.138, y: 566), control2: CGPoint(x: 74, y: 455.862))
        pathRef.addCurve(to: CGPoint(x: 320, y: 74), control1: CGPoint(x: 74, y: 184.138), control2: CGPoint(x: 184.138, y: 74))
        pathRef.addCurve(to: CGPoint(x: 566, y: 320), control1: CGPoint(x: 455.862, y: 74), control2: CGPoint(x: 566, y: 184.138))
        pathRef.addCurve(to: CGPoint(x: 320, y: 566), control1: CGPoint(x: 566, y: 455.862), control2: CGPoint(x: 455.862, y: 566))
        pathRef.closeSubpath()
        
        ctx.setFillColor(red: 1, green: 1, blue: 1, alpha: 1)
        ctx.addPath(pathRef)
        ctx.fillPath()
        
        ctx.setLineWidth(8)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef)
        ctx.strokePath()
        
        
        /*  Shape 2  */
        let pathRef2 = CGMutablePath()
        pathRef2.move(to: CGPoint(x: 320, y: 604.5))
        pathRef2.addCurve(to: CGPoint(x: 35.5, y: 320), control1: CGPoint(x: 162.875, y: 604.5), control2: CGPoint(x: 35.5, y: 477.125))
        pathRef2.addCurve(to: CGPoint(x: 320, y: 35.5), control1: CGPoint(x: 35.5, y: 162.875), control2: CGPoint(x: 162.875, y: 35.5))
        pathRef2.addCurve(to: CGPoint(x: 604.5, y: 320), control1: CGPoint(x: 477.125, y: 35.5), control2: CGPoint(x: 604.5, y: 162.875))
        pathRef2.addCurve(to: CGPoint(x: 320, y: 604.5), control1: CGPoint(x: 604.5, y: 477.125), control2: CGPoint(x: 477.125, y: 604.5))
        pathRef2.closeSubpath()
        
        /*  Drop Shadow  */
        let shadowColor = CGColor(colorSpace: colorSpace, components: [0, 0, 0, 0.75])
        
        let shadowPath = CGMutablePath()
        shadowPath.move(to: CGPoint(x: -315.5, y: 30))
        shadowPath.addCurve(to: CGPoint(x: -25, y: 320.5), control1: CGPoint(x: -155.061, y: 30), control2: CGPoint(x: -25, y: 160.061))
        shadowPath.addCurve(to: CGPoint(x: -235.972, y: 599.98), control1: CGPoint(x: -24.724, y: 448.712), control2: CGPoint(x: -112.702, y: 564.99))
        shadowPath.addCurve(to: CGPoint(x: -308.002, y: 610.905), control1: CGPoint(x: -259.621, y: 606.692), control2: CGPoint(x: -283.519, y: 609.665))
        shadowPath.addLine(to: CGPoint(x: -315.5, y: 611))
        shadowPath.addLine(to: CGPoint(x: -322.998, y: 610.905))
        shadowPath.addCurve(to: CGPoint(x: -606, y: 320.5), control1: CGPoint(x: -481.574, y: 604.956), control2: CGPoint(x: -603.995, y: 479.085))
        shadowPath.addCurve(to: CGPoint(x: -315.5, y: 30), control1: CGPoint(x: -606, y: 160.061), control2: CGPoint(x: -475.939, y: 30))
        shadowPath.closeSubpath()
        
        let clipPath = CGMutablePath()
        clipPath.move(to: CGPoint(x: 3, y: 1))
        clipPath.addLine(to: CGPoint(x: 638.001, y: 1))
        clipPath.addLine(to: CGPoint(x: 638.001, y: 640))
        clipPath.addLine(to: CGPoint(x: 3, y: 640))
        clipPath.closeSubpath()
        clipPath.move(to: CGPoint(x: 320.5, y: 30))
        clipPath.addCurve(to: CGPoint(x: 30, y: 320.5), control1: CGPoint(x: 160.061, y: 30), control2: CGPoint(x: 30, y: 160.061))
        clipPath.addCurve(to: CGPoint(x: 313.002, y: 610.905), control1: CGPoint(x: 32.005, y: 479.085), control2: CGPoint(x: 154.426, y: 604.956))
        clipPath.addLine(to: CGPoint(x: 320.5, y: 611))
        clipPath.addLine(to: CGPoint(x: 327.998, y: 610.905))
        clipPath.addCurve(to: CGPoint(x: 400.028, y: 599.98), control1: CGPoint(x: 352.481, y: 609.665), control2: CGPoint(x: 376.379, y: 606.692))
        clipPath.addCurve(to: CGPoint(x: 611, y: 320.5), control1: CGPoint(x: 523.298, y: 564.99), control2: CGPoint(x: 611.276, y: 448.712))
        clipPath.addCurve(to: CGPoint(x: 320.5, y: 30), control1: CGPoint(x: 611, y: 160.061), control2: CGPoint(x: 480.939, y: 30))
        clipPath.closeSubpath()
        
        ctx.saveGState()
        ctx.addPath(clipPath)
        ctx.clip()
        
        ctx.translateBy(x: 0, y: 2)
        ctx.setShadow(offset: CGSize(width: (636 * scaleFactor), height: 0), blur: (26 * scaleFactor), color: shadowColor)
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(shadowPath)
        ctx.fillPath()
        
        ctx.restoreGState()
        
        /*  Gradient Fill  */
        ctx.saveGState()
        ctx.addPath(pathRef2)
        ctx.clip()
        
        let gradientColors: [CGFloat] = [
            1, 1, 1, 1,
            0.49, 0.49, 0.49, 1]
        let gradientLocations: [CGFloat] = [0, 0.991]
        
        guard let gradientRef = CGGradient(colorSpace: colorSpace, colorComponents: gradientColors, locations: gradientLocations, count: 2) else { return }
        ctx.drawLinearGradient(gradientRef, start: CGPoint(x: 119.328, y: 119.328), end: CGPoint(x: 521.672, y: 521.672), options: [.drawsBeforeStartLocation, .drawsAfterEndLocation])
        ctx.restoreGState()
        
        ctx.setLineWidth(12)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef2)
        ctx.strokePath()
        
        
        /*  Shape 3  */
        let pathRef3 = CGMutablePath()
        pathRef3.move(to: CGPoint(x: 320, y: 566))
        pathRef3.addCurve(to: CGPoint(x: 74, y: 320), control1: CGPoint(x: 184.138, y: 566), control2: CGPoint(x: 74, y: 455.862))
        pathRef3.addCurve(to: CGPoint(x: 320, y: 74), control1: CGPoint(x: 74, y: 184.138), control2: CGPoint(x: 184.138, y: 74))
        pathRef3.addCurve(to: CGPoint(x: 566, y: 320), control1: CGPoint(x: 455.862, y: 74), control2: CGPoint(x: 566, y: 184.138))
        pathRef3.addCurve(to: CGPoint(x: 320, y: 566), control1: CGPoint(x: 566, y: 455.862), control2: CGPoint(x: 455.862, y: 566))
        pathRef3.closeSubpath()
        
        ctx.setFillColor(red: 1, green: 1, blue: 1, alpha: 1)
        ctx.addPath(pathRef3)
        ctx.fillPath()
        
        ctx.setLineWidth(6)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef3)
        ctx.strokePath()
        
        /*  Inner Shadow  */
        let shadowColor2 = CGColor(colorSpace: colorSpace, components: [0, 0, 0, 0.75])
        
        let shadowPath2 = CGMutablePath()
        shadowPath2.move(to: CGPoint(x: -511.5, y: 41.5))
        shadowPath2.addLine(to: CGPoint(x: 42.5, y: 41.5))
        shadowPath2.addLine(to: CGPoint(x: 42.5, y: 599.5))
        shadowPath2.addLine(to: CGPoint(x: -511.5, y: 599.5))
        shadowPath2.closeSubpath()
        shadowPath2.move(to: CGPoint(x: -234.5, y: 71.5))
        shadowPath2.addCurve(to: CGPoint(x: -483.5, y: 320.5), control1: CGPoint(x: -372.019, y: 71.5), control2: CGPoint(x: -483.5, y: 182.981))
        shadowPath2.addCurve(to: CGPoint(x: -234.5, y: 569.5), control1: CGPoint(x: -483.5, y: 458.019), control2: CGPoint(x: -372.019, y: 569.5))
        shadowPath2.addCurve(to: CGPoint(x: 14.5, y: 320.5), control1: CGPoint(x: -96.981, y: 569.5), control2: CGPoint(x: 14.5, y: 458.019))
        shadowPath2.addCurve(to: CGPoint(x: -234.5, y: 71.5), control1: CGPoint(x: 14.5, y: 182.981), control2: CGPoint(x: -96.981, y: 71.5))
        shadowPath2.closeSubpath()
        
        let clipPath2 = CGMutablePath()
        clipPath2.move(to: CGPoint(x: 320.5, y: 71.5))
        clipPath2.addCurve(to: CGPoint(x: 569.5, y: 320.5), control1: CGPoint(x: 458.019, y: 71.5), control2: CGPoint(x: 569.5, y: 182.981))
        clipPath2.addCurve(to: CGPoint(x: 320.5, y: 569.5), control1: CGPoint(x: 569.5, y: 458.019), control2: CGPoint(x: 458.019, y: 569.5))
        clipPath2.addCurve(to: CGPoint(x: 71.5, y: 320.5), control1: CGPoint(x: 182.981, y: 569.5), control2: CGPoint(x: 71.5, y: 458.019))
        clipPath2.addCurve(to: CGPoint(x: 320.5, y: 71.5), control1: CGPoint(x: 71.5, y: 182.981), control2: CGPoint(x: 182.981, y: 71.5))
        clipPath2.closeSubpath()
        
        ctx.saveGState()
        ctx.addPath(clipPath2)
        ctx.clip()
        
        ctx.translateBy(x: 0, y: 2)
        ctx.setShadow(offset: CGSize(width: (555 * scaleFactor), height: 0), blur: (27 * scaleFactor), color: shadowColor2)
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(shadowPath2)
        ctx.fillPath()
        
        ctx.restoreGState()
        
        
        /*  Shape 4  */
        let pathRef4 = CGMutablePath()
        pathRef4.move(to: CGPoint(x: 320, y: 74))
        pathRef4.addLine(to: CGPoint(x: 320, y: 566))
        
        ctx.setLineWidth(4)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef4)
        ctx.strokePath()
        
        
        /*  Shape 5  */
        let pathRef5 = CGMutablePath()
        pathRef5.move(to: CGPoint(x: 74, y: 320))
        pathRef5.addLine(to: CGPoint(x: 566, y: 320))
        
        ctx.setLineWidth(4)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef5)
        ctx.strokePath()
        
        
        /*  Shape 6  */
        let pathRef6 = CGMutablePath()
        pathRef6.move(to: CGPoint(x: 443, y: 106.958))
        pathRef6.addLine(to: CGPoint(x: 197, y: 533.042))
        
        ctx.setLineWidth(4)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef6)
        ctx.strokePath()
        
        
        /*  Shape 7  */
        let pathRef7 = CGMutablePath()
        pathRef7.move(to: CGPoint(x: 106.958, y: 197))
        pathRef7.addLine(to: CGPoint(x: 533.042, y: 443))
        
        ctx.setLineWidth(4)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef7)
        ctx.strokePath()
        
        
        /*  Shape 8  */
        let pathRef8 = CGMutablePath()
        pathRef8.move(to: CGPoint(x: 533.042, y: 197))
        pathRef8.addLine(to: CGPoint(x: 106.958, y: 443))
        
        ctx.setLineWidth(4)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef8)
        ctx.strokePath()
        
        
        /*  Shape 9  */
        let pathRef9 = CGMutablePath()
        pathRef9.move(to: CGPoint(x: 197, y: 106.958))
        pathRef9.addLine(to: CGPoint(x: 443, y: 533.042))
        
        ctx.setLineWidth(4)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef9)
        ctx.strokePath()
        
        
        /*  Shape 10  */
        let pathRef10 = CGMutablePath()
        pathRef10.move(to: CGPoint(x: 345.714, y: 75.348))
        pathRef10.addLine(to: CGPoint(x: 294.286, y: 564.652))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef10)
        ctx.strokePath()
        
        
        /*  Shape 11  */
        let pathRef11 = CGMutablePath()
        pathRef11.move(to: CGPoint(x: 75.348, y: 294.286))
        pathRef11.addLine(to: CGPoint(x: 564.652, y: 345.714))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef11)
        ctx.strokePath()
        
        
        /*  Shape 12  */
        let pathRef12 = CGMutablePath()
        pathRef12.move(to: CGPoint(x: 371.146, y: 79.376))
        pathRef12.addLine(to: CGPoint(x: 268.854, y: 560.624))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef12)
        ctx.strokePath()
        
        
        /*  Shape 13  */
        let pathRef13 = CGMutablePath()
        pathRef13.move(to: CGPoint(x: 79.376, y: 268.854))
        pathRef13.addLine(to: CGPoint(x: 560.624, y: 371.146))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef13)
        ctx.strokePath()
        
        
        /*  Shape 14  */
        let pathRef14 = CGMutablePath()
        pathRef14.move(to: CGPoint(x: 396.018, y: 86.04))
        pathRef14.addLine(to: CGPoint(x: 243.982, y: 553.96))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef14)
        ctx.strokePath()
        
        
        /*  Shape 15  */
        let pathRef15 = CGMutablePath()
        pathRef15.move(to: CGPoint(x: 86.04, y: 243.982))
        pathRef15.addLine(to: CGPoint(x: 553.96, y: 396.018))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef15)
        ctx.strokePath()
        
        
        /*  Shape 16  */
        let pathRef16 = CGMutablePath()
        pathRef16.move(to: CGPoint(x: 420.057, y: 95.268))
        pathRef16.addLine(to: CGPoint(x: 219.943, y: 544.732))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef16)
        ctx.strokePath()
        
        
        /*  Shape 17  */
        let pathRef17 = CGMutablePath()
        pathRef17.move(to: CGPoint(x: 95.268, y: 219.943))
        pathRef17.addLine(to: CGPoint(x: 544.732, y: 420.057))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef17)
        ctx.strokePath()
        
        
        /*  Shape 18  */
        let pathRef18 = CGMutablePath()
        pathRef18.move(to: CGPoint(x: 294.286, y: 75.348))
        pathRef18.addLine(to: CGPoint(x: 345.714, y: 564.652))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef18)
        ctx.strokePath()
        
        
        /*  Shape 19  */
        let pathRef19 = CGMutablePath()
        pathRef19.move(to: CGPoint(x: 75.348, y: 345.714))
        pathRef19.addLine(to: CGPoint(x: 564.652, y: 294.286))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef19)
        ctx.strokePath()
        
        
        /*  Shape 20  */
        let pathRef20 = CGMutablePath()
        pathRef20.move(to: CGPoint(x: 268.854, y: 79.376))
        pathRef20.addLine(to: CGPoint(x: 371.146, y: 560.624))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef20)
        ctx.strokePath()
        
        
        /*  Shape 21  */
        let pathRef21 = CGMutablePath()
        pathRef21.move(to: CGPoint(x: 79.376, y: 371.146))
        pathRef21.addLine(to: CGPoint(x: 560.624, y: 268.854))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef21)
        ctx.strokePath()
        
        
        /*  Shape 22  */
        let pathRef22 = CGMutablePath()
        pathRef22.move(to: CGPoint(x: 243.982, y: 86.04))
        pathRef22.addLine(to: CGPoint(x: 396.018, y: 553.96))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef22)
        ctx.strokePath()
        
        
        /*  Shape 23  */
        let pathRef23 = CGMutablePath()
        pathRef23.move(to: CGPoint(x: 86.04, y: 396.018))
        pathRef23.addLine(to: CGPoint(x: 553.96, y: 243.982))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef23)
        ctx.strokePath()
        
        
        /*  Shape 24  */
        let pathRef24 = CGMutablePath()
        pathRef24.move(to: CGPoint(x: 219.943, y: 95.268))
        pathRef24.addLine(to: CGPoint(x: 420.057, y: 544.732))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef24)
        ctx.strokePath()
        
        
        /*  Shape 25  */
        let pathRef25 = CGMutablePath()
        pathRef25.move(to: CGPoint(x: 95.268, y: 420.057))
        pathRef25.addLine(to: CGPoint(x: 544.732, y: 219.943))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef25)
        ctx.strokePath()
        
        
        /*  Shape 26  */
        let pathRef26 = CGMutablePath()
        pathRef26.move(to: CGPoint(x: 464.595, y: 120.982))
        pathRef26.addLine(to: CGPoint(x: 175.405, y: 519.018))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef26)
        ctx.strokePath()
        
        
        /*  Shape 27  */
        let pathRef27 = CGMutablePath()
        pathRef27.move(to: CGPoint(x: 120.982, y: 175.405))
        pathRef27.addLine(to: CGPoint(x: 519.018, y: 464.595))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef27)
        ctx.strokePath()
        
        
        /*  Shape 28  */
        let pathRef28 = CGMutablePath()
        pathRef28.move(to: CGPoint(x: 484.606, y: 137.186))
        pathRef28.addLine(to: CGPoint(x: 155.394, y: 502.814))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef28)
        ctx.strokePath()
        
        
        /*  Shape 29  */
        let pathRef29 = CGMutablePath()
        pathRef29.move(to: CGPoint(x: 137.186, y: 155.394))
        pathRef29.addLine(to: CGPoint(x: 502.814, y: 484.606))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef29)
        ctx.strokePath()
        
        
        /*  Shape 30  */
        let pathRef30 = CGMutablePath()
        pathRef30.move(to: CGPoint(x: 502.814, y: 155.394))
        pathRef30.addLine(to: CGPoint(x: 137.186, y: 484.606))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef30)
        ctx.strokePath()
        
        
        /*  Shape 31  */
        let pathRef31 = CGMutablePath()
        pathRef31.move(to: CGPoint(x: 155.394, y: 137.186))
        pathRef31.addLine(to: CGPoint(x: 484.606, y: 502.814))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef31)
        ctx.strokePath()
        
        
        /*  Shape 32  */
        let pathRef32 = CGMutablePath()
        pathRef32.move(to: CGPoint(x: 519.018, y: 175.405))
        pathRef32.addLine(to: CGPoint(x: 120.982, y: 464.595))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef32)
        ctx.strokePath()
        
        
        /*  Shape 33  */
        let pathRef33 = CGMutablePath()
        pathRef33.move(to: CGPoint(x: 175.405, y: 120.982))
        pathRef33.addLine(to: CGPoint(x: 464.595, y: 519.018))
        
        ctx.setLineWidth(1)
        ctx.setStrokeColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef33)
        ctx.strokePath()
        
        
        /*  Shape 34  */
        let pathRef34 = CGMutablePath()
        pathRef34.move(to: CGPoint(x: 320, y: 544.732))
        pathRef34.addCurve(to: CGPoint(x: 95.268, y: 320), control1: CGPoint(x: 195.884, y: 544.732), control2: CGPoint(x: 95.268, y: 444.116))
        pathRef34.addCurve(to: CGPoint(x: 320, y: 95.268), control1: CGPoint(x: 95.268, y: 195.884), control2: CGPoint(x: 195.884, y: 95.268))
        pathRef34.addCurve(to: CGPoint(x: 544.732, y: 320), control1: CGPoint(x: 444.116, y: 95.268), control2: CGPoint(x: 544.732, y: 195.884))
        pathRef34.addCurve(to: CGPoint(x: 320, y: 544.732), control1: CGPoint(x: 544.732, y: 444.116), control2: CGPoint(x: 444.116, y: 544.732))
        pathRef34.closeSubpath()
        
        ctx.setFillColor(red: 1, green: 1, blue: 1, alpha: 1)
        ctx.addPath(pathRef34)
        ctx.fillPath()
        
        
        /*  12  */
        /*  Shape 35  */
        let pathRef35 = CGMutablePath()
        pathRef35.move(to: CGPoint(x: 310.856, y: 141.872))
        pathRef35.addLine(to: CGPoint(x: 310.856, y: 108.272))
        pathRef35.addLine(to: CGPoint(x: 305.432, y: 108.272))
        pathRef35.addQuadCurve(to: CGPoint(x: 304.232, y: 111.488), control: CGPoint(x: 305.144, y: 110.192))
        pathRef35.addQuadCurve(to: CGPoint(x: 302, y: 113.576), control: CGPoint(x: 303.32, y: 112.784))
        pathRef35.addQuadCurve(to: CGPoint(x: 299.024, y: 114.68), control: CGPoint(x: 300.68, y: 114.368))
        pathRef35.addQuadCurve(to: CGPoint(x: 295.592, y: 114.944), control: CGPoint(x: 297.368, y: 114.992))
        pathRef35.addLine(to: CGPoint(x: 295.592, y: 120.08))
        pathRef35.addLine(to: CGPoint(x: 304.04, y: 120.08))
        pathRef35.addLine(to: CGPoint(x: 304.04, y: 141.872))
        pathRef35.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef35)
        ctx.fillPath()
        
        
        /*  Shape 36  */
        let pathRef36 = CGMutablePath()
        pathRef36.move(to: CGPoint(x: 320.504, y: 121.184))
        pathRef36.addLine(to: CGPoint(x: 327.032, y: 121.184))
        pathRef36.addQuadCurve(to: CGPoint(x: 327.296, y: 118.472), control: CGPoint(x: 327.032, y: 119.84))
        pathRef36.addQuadCurve(to: CGPoint(x: 328.184, y: 115.976), control: CGPoint(x: 327.56, y: 117.104))
        pathRef36.addQuadCurve(to: CGPoint(x: 329.84, y: 114.152), control: CGPoint(x: 328.808, y: 114.848))
        pathRef36.addQuadCurve(to: CGPoint(x: 332.36, y: 113.456), control: CGPoint(x: 330.872, y: 113.456))
        pathRef36.addQuadCurve(to: CGPoint(x: 335.984, y: 114.824), control: CGPoint(x: 334.568, y: 113.456))
        pathRef36.addQuadCurve(to: CGPoint(x: 337.4, y: 118.64), control: CGPoint(x: 337.4, y: 116.192))
        pathRef36.addQuadCurve(to: CGPoint(x: 336.704, y: 121.376), control: CGPoint(x: 337.4, y: 120.176))
        pathRef36.addQuadCurve(to: CGPoint(x: 334.976, y: 123.536), control: CGPoint(x: 336.008, y: 122.576))
        pathRef36.addQuadCurve(to: CGPoint(x: 332.696, y: 125.288), control: CGPoint(x: 333.944, y: 124.496))
        pathRef36.addQuadCurve(to: CGPoint(x: 330.344, y: 126.848), control: CGPoint(x: 331.448, y: 126.08))
        pathRef36.addQuadCurve(to: CGPoint(x: 326.24, y: 129.776), control: CGPoint(x: 328.184, y: 128.336))
        pathRef36.addQuadCurve(to: CGPoint(x: 322.856, y: 132.92), control: CGPoint(x: 324.296, y: 131.216))
        pathRef36.addQuadCurve(to: CGPoint(x: 320.576, y: 136.784), control: CGPoint(x: 321.416, y: 134.624))
        pathRef36.addQuadCurve(to: CGPoint(x: 319.736, y: 141.872), control: CGPoint(x: 319.736, y: 138.944))
        pathRef36.addLine(to: CGPoint(x: 344.408, y: 141.872))
        pathRef36.addLine(to: CGPoint(x: 344.408, y: 136.016))
        pathRef36.addLine(to: CGPoint(x: 328.52, y: 136.016))
        pathRef36.addQuadCurve(to: CGPoint(x: 331.4, y: 132.992), control: CGPoint(x: 329.768, y: 134.288))
        pathRef36.addQuadCurve(to: CGPoint(x: 334.76, y: 130.568), control: CGPoint(x: 333.032, y: 131.696))
        pathRef36.addQuadCurve(to: CGPoint(x: 338.192, y: 128.288), control: CGPoint(x: 336.488, y: 129.44))
        pathRef36.addQuadCurve(to: CGPoint(x: 341.24, y: 125.72), control: CGPoint(x: 339.896, y: 127.136))
        pathRef36.addQuadCurve(to: CGPoint(x: 343.4, y: 122.48), control: CGPoint(x: 342.584, y: 124.304))
        pathRef36.addQuadCurve(to: CGPoint(x: 344.216, y: 118.112), control: CGPoint(x: 344.216, y: 120.656))
        pathRef36.addQuadCurve(to: CGPoint(x: 343.28, y: 113.696), control: CGPoint(x: 344.216, y: 115.664))
        pathRef36.addQuadCurve(to: CGPoint(x: 340.76, y: 110.384), control: CGPoint(x: 342.344, y: 111.728))
        pathRef36.addQuadCurve(to: CGPoint(x: 337.088, y: 108.32), control: CGPoint(x: 339.176, y: 109.04))
        pathRef36.addQuadCurve(to: CGPoint(x: 332.696, y: 107.6), control: CGPoint(x: 335, y: 107.6))
        pathRef36.addQuadCurve(to: CGPoint(x: 327.344, y: 108.632), control: CGPoint(x: 329.672, y: 107.6))
        pathRef36.addQuadCurve(to: CGPoint(x: 323.48, y: 111.512), control: CGPoint(x: 325.016, y: 109.664))
        pathRef36.addQuadCurve(to: CGPoint(x: 321.176, y: 115.832), control: CGPoint(x: 321.944, y: 113.36))
        pathRef36.addQuadCurve(to: CGPoint(x: 320.504, y: 121.184), control: CGPoint(x: 320.408, y: 118.304))
        pathRef36.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef36)
        ctx.fillPath()
        
        
        /*  Shape 37  */
        let pathRef37 = CGMutablePath()
        pathRef37.move(to: CGPoint(x: 518.162, y: 316.808))
        pathRef37.addLine(to: CGPoint(x: 518.162, y: 321.608))
        pathRef37.addQuadCurve(to: CGPoint(x: 520.778, y: 321.68), control: CGPoint(x: 519.41, y: 321.608))
        pathRef37.addQuadCurve(to: CGPoint(x: 523.298, y: 322.208), control: CGPoint(x: 522.146, y: 321.752))
        pathRef37.addQuadCurve(to: CGPoint(x: 525.194, y: 323.672), control: CGPoint(x: 524.45, y: 322.664))
        pathRef37.addQuadCurve(to: CGPoint(x: 525.938, y: 326.6), control: CGPoint(x: 525.938, y: 324.68))
        pathRef37.addQuadCurve(to: CGPoint(x: 524.354, y: 330.464), control: CGPoint(x: 525.938, y: 329.048))
        pathRef37.addQuadCurve(to: CGPoint(x: 520.466, y: 331.88), control: CGPoint(x: 522.77, y: 331.88))
        pathRef37.addQuadCurve(to: CGPoint(x: 517.898, y: 331.352), control: CGPoint(x: 518.978, y: 331.88))
        pathRef37.addQuadCurve(to: CGPoint(x: 516.098, y: 329.936), control: CGPoint(x: 516.818, y: 330.824))
        pathRef37.addQuadCurve(to: CGPoint(x: 514.994, y: 327.824), control: CGPoint(x: 515.378, y: 329.048))
        pathRef37.addQuadCurve(to: CGPoint(x: 514.562, y: 325.256), control: CGPoint(x: 514.61, y: 326.6))
        pathRef37.addLine(to: CGPoint(x: 508.082, y: 325.256))
        pathRef37.addQuadCurve(to: CGPoint(x: 508.922, y: 330.44), control: CGPoint(x: 508.034, y: 328.184))
        pathRef37.addQuadCurve(to: CGPoint(x: 511.442, y: 334.256), control: CGPoint(x: 509.81, y: 332.696))
        pathRef37.addQuadCurve(to: CGPoint(x: 515.402, y: 336.632), control: CGPoint(x: 513.074, y: 335.816))
        pathRef37.addQuadCurve(to: CGPoint(x: 520.562, y: 337.448), control: CGPoint(x: 517.73, y: 337.448))
        pathRef37.addQuadCurve(to: CGPoint(x: 525.266, y: 336.728), control: CGPoint(x: 523.01, y: 337.448))
        pathRef37.addQuadCurve(to: CGPoint(x: 529.25, y: 334.616), control: CGPoint(x: 527.522, y: 336.008))
        pathRef37.addQuadCurve(to: CGPoint(x: 532.01, y: 331.16), control: CGPoint(x: 530.978, y: 333.224))
        pathRef37.addQuadCurve(to: CGPoint(x: 533.042, y: 326.456), control: CGPoint(x: 533.042, y: 329.096))
        pathRef37.addQuadCurve(to: CGPoint(x: 531.458, y: 321.512), control: CGPoint(x: 533.042, y: 323.576))
        pathRef37.addQuadCurve(to: CGPoint(x: 527.09, y: 318.824), control: CGPoint(x: 529.874, y: 319.448))
        pathRef37.addLine(to: CGPoint(x: 527.09, y: 318.728))
        pathRef37.addQuadCurve(to: CGPoint(x: 530.618, y: 316.184), control: CGPoint(x: 529.442, y: 318.056))
        pathRef37.addQuadCurve(to: CGPoint(x: 531.794, y: 311.864), control: CGPoint(x: 531.794, y: 314.312))
        pathRef37.addQuadCurve(to: CGPoint(x: 530.786, y: 307.88), control: CGPoint(x: 531.794, y: 309.608))
        pathRef37.addQuadCurve(to: CGPoint(x: 528.17, y: 304.952), control: CGPoint(x: 529.778, y: 306.152))
        pathRef37.addQuadCurve(to: CGPoint(x: 524.546, y: 303.152), control: CGPoint(x: 526.562, y: 303.752))
        pathRef37.addQuadCurve(to: CGPoint(x: 520.514, y: 302.552), control: CGPoint(x: 522.53, y: 302.552))
        pathRef37.addQuadCurve(to: CGPoint(x: 515.81, y: 303.392), control: CGPoint(x: 517.922, y: 302.552))
        pathRef37.addQuadCurve(to: CGPoint(x: 512.186, y: 305.768), control: CGPoint(x: 513.698, y: 304.232))
        pathRef37.addQuadCurve(to: CGPoint(x: 509.834, y: 309.44), control: CGPoint(x: 510.674, y: 307.304))
        pathRef37.addQuadCurve(to: CGPoint(x: 508.898, y: 314.168), control: CGPoint(x: 508.994, y: 311.576))
        pathRef37.addLine(to: CGPoint(x: 515.378, y: 314.168))
        pathRef37.addQuadCurve(to: CGPoint(x: 516.65, y: 309.872), control: CGPoint(x: 515.33, y: 311.576))
        pathRef37.addQuadCurve(to: CGPoint(x: 520.562, y: 308.168), control: CGPoint(x: 517.97, y: 308.168))
        pathRef37.addQuadCurve(to: CGPoint(x: 523.874, y: 309.32), control: CGPoint(x: 522.434, y: 308.168))
        pathRef37.addQuadCurve(to: CGPoint(x: 525.314, y: 312.632), control: CGPoint(x: 525.314, y: 310.472))
        pathRef37.addQuadCurve(to: CGPoint(x: 524.618, y: 314.936), control: CGPoint(x: 525.314, y: 314.072))
        pathRef37.addQuadCurve(to: CGPoint(x: 522.842, y: 316.256), control: CGPoint(x: 523.922, y: 315.8))
        pathRef37.addQuadCurve(to: CGPoint(x: 520.514, y: 316.808), control: CGPoint(x: 521.762, y: 316.712))
        pathRef37.addQuadCurve(to: CGPoint(x: 518.162, y: 316.808), control: CGPoint(x: 519.266, y: 316.904))
        pathRef37.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef37)
        ctx.fillPath()
        
        
        /*  Shape 38  */
        let pathRef38 = CGMutablePath()
        pathRef38.move(to: CGPoint(x: 320.384, y: 515.848))
        pathRef38.addQuadCurve(to: CGPoint(x: 322.664, y: 516.4), control: CGPoint(x: 321.68, y: 515.848))
        pathRef38.addQuadCurve(to: CGPoint(x: 324.272, y: 517.84), control: CGPoint(x: 323.648, y: 516.952))
        pathRef38.addQuadCurve(to: CGPoint(x: 325.208, y: 519.856), control: CGPoint(x: 324.896, y: 518.728))
        pathRef38.addQuadCurve(to: CGPoint(x: 325.52, y: 522.184), control: CGPoint(x: 325.52, y: 520.984))
        pathRef38.addQuadCurve(to: CGPoint(x: 325.184, y: 524.44), control: CGPoint(x: 325.52, y: 523.336))
        pathRef38.addQuadCurve(to: CGPoint(x: 324.176, y: 526.408), control: CGPoint(x: 324.848, y: 525.544))
        pathRef38.addQuadCurve(to: CGPoint(x: 322.568, y: 527.8), control: CGPoint(x: 323.504, y: 527.272))
        pathRef38.addQuadCurve(to: CGPoint(x: 320.384, y: 528.328), control: CGPoint(x: 321.632, y: 528.328))
        pathRef38.addQuadCurve(to: CGPoint(x: 318.08, y: 527.8), control: CGPoint(x: 319.088, y: 528.328))
        pathRef38.addQuadCurve(to: CGPoint(x: 316.376, y: 526.384), control: CGPoint(x: 317.072, y: 527.272))
        pathRef38.addQuadCurve(to: CGPoint(x: 315.32, y: 524.368), control: CGPoint(x: 315.68, y: 525.496))
        pathRef38.addQuadCurve(to: CGPoint(x: 314.96, y: 522.088), control: CGPoint(x: 314.96, y: 523.24))
        pathRef38.addQuadCurve(to: CGPoint(x: 315.296, y: 519.712), control: CGPoint(x: 314.96, y: 520.84))
        pathRef38.addQuadCurve(to: CGPoint(x: 316.304, y: 517.72), control: CGPoint(x: 315.632, y: 518.584))
        pathRef38.addQuadCurve(to: CGPoint(x: 318.008, y: 516.352), control: CGPoint(x: 316.976, y: 516.856))
        pathRef38.addQuadCurve(to: CGPoint(x: 320.384, y: 515.848), control: CGPoint(x: 319.04, y: 515.848))
        pathRef38.closeSubpath()
        pathRef38.move(to: CGPoint(x: 325.28, y: 508.312))
        pathRef38.addLine(to: CGPoint(x: 331.76, y: 508.312))
        pathRef38.addQuadCurve(to: CGPoint(x: 330.56, y: 504.328), control: CGPoint(x: 331.472, y: 506.056))
        pathRef38.addQuadCurve(to: CGPoint(x: 328.208, y: 501.424), control: CGPoint(x: 329.648, y: 502.6))
        pathRef38.addQuadCurve(to: CGPoint(x: 324.896, y: 499.624), control: CGPoint(x: 326.768, y: 500.248))
        pathRef38.addQuadCurve(to: CGPoint(x: 320.864, y: 499), control: CGPoint(x: 323.024, y: 499))
        pathRef38.addQuadCurve(to: CGPoint(x: 314.768, y: 500.584), control: CGPoint(x: 317.264, y: 499))
        pathRef38.addQuadCurve(to: CGPoint(x: 310.688, y: 504.688), control: CGPoint(x: 312.272, y: 502.168))
        pathRef38.addQuadCurve(to: CGPoint(x: 308.384, y: 510.328), control: CGPoint(x: 309.104, y: 507.208))
        pathRef38.addQuadCurve(to: CGPoint(x: 307.664, y: 516.568), control: CGPoint(x: 307.664, y: 513.448))
        pathRef38.addQuadCurve(to: CGPoint(x: 308.24, y: 522.88), control: CGPoint(x: 307.664, y: 519.784))
        pathRef38.addQuadCurve(to: CGPoint(x: 310.304, y: 528.424), control: CGPoint(x: 308.816, y: 525.976))
        pathRef38.addQuadCurve(to: CGPoint(x: 314.288, y: 532.384), control: CGPoint(x: 311.792, y: 530.872))
        pathRef38.addQuadCurve(to: CGPoint(x: 320.576, y: 533.896), control: CGPoint(x: 316.784, y: 533.896))
        pathRef38.addQuadCurve(to: CGPoint(x: 325.376, y: 532.96), control: CGPoint(x: 323.216, y: 533.896))
        pathRef38.addQuadCurve(to: CGPoint(x: 329.096, y: 530.368), control: CGPoint(x: 327.536, y: 532.024))
        pathRef38.addQuadCurve(to: CGPoint(x: 331.496, y: 526.48), control: CGPoint(x: 330.656, y: 528.712))
        pathRef38.addQuadCurve(to: CGPoint(x: 332.336, y: 521.656), control: CGPoint(x: 332.336, y: 524.248))
        pathRef38.addQuadCurve(to: CGPoint(x: 331.712, y: 517.672), control: CGPoint(x: 332.336, y: 519.64))
        pathRef38.addQuadCurve(to: CGPoint(x: 329.744, y: 514.168), control: CGPoint(x: 331.088, y: 515.704))
        pathRef38.addQuadCurve(to: CGPoint(x: 326.24, y: 511.648), control: CGPoint(x: 328.304, y: 512.584))
        pathRef38.addQuadCurve(to: CGPoint(x: 322.016, y: 510.712), control: CGPoint(x: 324.176, y: 510.712))
        pathRef38.addQuadCurve(to: CGPoint(x: 317.696, y: 511.576), control: CGPoint(x: 319.568, y: 510.712))
        pathRef38.addQuadCurve(to: CGPoint(x: 314.432, y: 514.456), control: CGPoint(x: 315.824, y: 512.44))
        pathRef38.addLine(to: CGPoint(x: 314.336, y: 514.36))
        pathRef38.addQuadCurve(to: CGPoint(x: 314.72, y: 511.192), control: CGPoint(x: 314.384, y: 512.968))
        pathRef38.addQuadCurve(to: CGPoint(x: 315.776, y: 507.856), control: CGPoint(x: 315.056, y: 509.416))
        pathRef38.addQuadCurve(to: CGPoint(x: 317.72, y: 505.216), control: CGPoint(x: 316.496, y: 506.296))
        pathRef38.addQuadCurve(to: CGPoint(x: 320.768, y: 504.136), control: CGPoint(x: 318.944, y: 504.136))
        pathRef38.addQuadCurve(to: CGPoint(x: 323.744, y: 505.384), control: CGPoint(x: 322.544, y: 504.136))
        pathRef38.addQuadCurve(to: CGPoint(x: 325.28, y: 508.312), control: CGPoint(x: 324.944, y: 506.632))
        pathRef38.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef38)
        ctx.fillPath()
        
        
        /*  Shape 39  */
        let pathRef39 = CGMutablePath()
        pathRef39.move(to: CGPoint(x: 119.032, y: 320.648))
        pathRef39.addQuadCurve(to: CGPoint(x: 116.752, y: 320.096), control: CGPoint(x: 117.736, y: 320.648))
        pathRef39.addQuadCurve(to: CGPoint(x: 115.144, y: 318.656), control: CGPoint(x: 115.768, y: 319.544))
        pathRef39.addQuadCurve(to: CGPoint(x: 114.208, y: 316.64), control: CGPoint(x: 114.52, y: 317.768))
        pathRef39.addQuadCurve(to: CGPoint(x: 113.896, y: 314.312), control: CGPoint(x: 113.896, y: 315.512))
        pathRef39.addQuadCurve(to: CGPoint(x: 114.232, y: 312.056), control: CGPoint(x: 113.896, y: 313.16))
        pathRef39.addQuadCurve(to: CGPoint(x: 115.24, y: 310.088), control: CGPoint(x: 114.568, y: 310.952))
        pathRef39.addQuadCurve(to: CGPoint(x: 116.872, y: 308.696), control: CGPoint(x: 115.912, y: 309.224))
        pathRef39.addQuadCurve(to: CGPoint(x: 119.032, y: 308.168), control: CGPoint(x: 117.832, y: 308.168))
        pathRef39.addQuadCurve(to: CGPoint(x: 121.336, y: 308.696), control: CGPoint(x: 120.328, y: 308.168))
        pathRef39.addQuadCurve(to: CGPoint(x: 123.04, y: 310.112), control: CGPoint(x: 122.344, y: 309.224))
        pathRef39.addQuadCurve(to: CGPoint(x: 124.096, y: 312.128), control: CGPoint(x: 123.736, y: 311))
        pathRef39.addQuadCurve(to: CGPoint(x: 124.456, y: 314.408), control: CGPoint(x: 124.456, y: 313.256))
        pathRef39.addQuadCurve(to: CGPoint(x: 124.12, y: 316.784), control: CGPoint(x: 124.456, y: 315.656))
        pathRef39.addQuadCurve(to: CGPoint(x: 123.112, y: 318.776), control: CGPoint(x: 123.784, y: 317.912))
        pathRef39.addQuadCurve(to: CGPoint(x: 121.432, y: 320.144), control: CGPoint(x: 122.44, y: 319.64))
        pathRef39.addQuadCurve(to: CGPoint(x: 119.032, y: 320.648), control: CGPoint(x: 120.424, y: 320.648))
        pathRef39.closeSubpath()
        pathRef39.move(to: CGPoint(x: 114.136, y: 328.184))
        pathRef39.addLine(to: CGPoint(x: 107.656, y: 328.184))
        pathRef39.addQuadCurve(to: CGPoint(x: 108.856, y: 332.12), control: CGPoint(x: 107.944, y: 330.392))
        pathRef39.addQuadCurve(to: CGPoint(x: 111.208, y: 335.048), control: CGPoint(x: 109.768, y: 333.848))
        pathRef39.addQuadCurve(to: CGPoint(x: 114.52, y: 336.848), control: CGPoint(x: 112.648, y: 336.248))
        pathRef39.addQuadCurve(to: CGPoint(x: 118.552, y: 337.448), control: CGPoint(x: 116.392, y: 337.448))
        pathRef39.addQuadCurve(to: CGPoint(x: 124.648, y: 335.888), control: CGPoint(x: 122.152, y: 337.448))
        pathRef39.addQuadCurve(to: CGPoint(x: 128.728, y: 331.808), control: CGPoint(x: 127.144, y: 334.328))
        pathRef39.addQuadCurve(to: CGPoint(x: 131.032, y: 326.168), control: CGPoint(x: 130.312, y: 329.288))
        pathRef39.addQuadCurve(to: CGPoint(x: 131.752, y: 319.928), control: CGPoint(x: 131.752, y: 323.048))
        pathRef39.addQuadCurve(to: CGPoint(x: 131.176, y: 313.64), control: CGPoint(x: 131.752, y: 316.76))
        pathRef39.addQuadCurve(to: CGPoint(x: 129.112, y: 308.048), control: CGPoint(x: 130.6, y: 310.52))
        pathRef39.addQuadCurve(to: CGPoint(x: 125.152, y: 304.064), control: CGPoint(x: 127.624, y: 305.576))
        pathRef39.addQuadCurve(to: CGPoint(x: 118.84, y: 302.552), control: CGPoint(x: 122.68, y: 302.552))
        pathRef39.addQuadCurve(to: CGPoint(x: 114.04, y: 303.512), control: CGPoint(x: 116.2, y: 302.552))
        pathRef39.addQuadCurve(to: CGPoint(x: 110.32, y: 306.128), control: CGPoint(x: 111.88, y: 304.472))
        pathRef39.addQuadCurve(to: CGPoint(x: 107.92, y: 310.016), control: CGPoint(x: 108.76, y: 307.784))
        pathRef39.addQuadCurve(to: CGPoint(x: 107.08, y: 314.84), control: CGPoint(x: 107.08, y: 312.248))
        pathRef39.addQuadCurve(to: CGPoint(x: 107.704, y: 318.824), control: CGPoint(x: 107.08, y: 316.856))
        pathRef39.addQuadCurve(to: CGPoint(x: 109.672, y: 322.328), control: CGPoint(x: 108.328, y: 320.792))
        pathRef39.addQuadCurve(to: CGPoint(x: 113.176, y: 324.848), control: CGPoint(x: 111.112, y: 323.912))
        pathRef39.addQuadCurve(to: CGPoint(x: 117.4, y: 325.784), control: CGPoint(x: 115.24, y: 325.784))
        pathRef39.addQuadCurve(to: CGPoint(x: 121.72, y: 324.92), control: CGPoint(x: 119.848, y: 325.784))
        pathRef39.addQuadCurve(to: CGPoint(x: 124.984, y: 322.04), control: CGPoint(x: 123.592, y: 324.056))
        pathRef39.addLine(to: CGPoint(x: 125.08, y: 322.136))
        pathRef39.addQuadCurve(to: CGPoint(x: 124.672, y: 325.304), control: CGPoint(x: 124.984, y: 323.528))
        pathRef39.addQuadCurve(to: CGPoint(x: 123.64, y: 328.64), control: CGPoint(x: 124.36, y: 327.08))
        pathRef39.addQuadCurve(to: CGPoint(x: 121.72, y: 331.28), control: CGPoint(x: 122.92, y: 330.2))
        pathRef39.addQuadCurve(to: CGPoint(x: 118.648, y: 332.36), control: CGPoint(x: 120.52, y: 332.36))
        pathRef39.addQuadCurve(to: CGPoint(x: 115.672, y: 331.112), control: CGPoint(x: 116.872, y: 332.36))
        pathRef39.addQuadCurve(to: CGPoint(x: 114.136, y: 328.184), control: CGPoint(x: 114.472, y: 329.864))
        pathRef39.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef39)
        ctx.fillPath()
        
        
        /*  Shape 40  */
        let pathRef40 = CGMutablePath()
        pathRef40.move(to: CGPoint(x: 433.416, y: 167.6))
        pathRef40.addLine(to: CGPoint(x: 433.416, y: 134))
        pathRef40.addLine(to: CGPoint(x: 427.992, y: 134))
        pathRef40.addQuadCurve(to: CGPoint(x: 426.792, y: 137.216), control: CGPoint(x: 427.704, y: 135.92))
        pathRef40.addQuadCurve(to: CGPoint(x: 424.56, y: 139.304), control: CGPoint(x: 425.88, y: 138.512))
        pathRef40.addQuadCurve(to: CGPoint(x: 421.584, y: 140.408), control: CGPoint(x: 423.24, y: 140.096))
        pathRef40.addQuadCurve(to: CGPoint(x: 418.152, y: 140.672), control: CGPoint(x: 419.928, y: 140.72))
        pathRef40.addLine(to: CGPoint(x: 418.152, y: 145.808))
        pathRef40.addLine(to: CGPoint(x: 426.6, y: 145.808))
        pathRef40.addLine(to: CGPoint(x: 426.6, y: 167.6))
        pathRef40.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef40)
        ctx.fillPath()
        
        
        /*  Shape 41  */
        let pathRef41 = CGMutablePath()
        pathRef41.move(to: CGPoint(x: 479.816, y: 214.312))
        pathRef41.addLine(to: CGPoint(x: 486.344, y: 214.312))
        pathRef41.addQuadCurve(to: CGPoint(x: 486.608, y: 211.6), control: CGPoint(x: 486.344, y: 212.968))
        pathRef41.addQuadCurve(to: CGPoint(x: 487.496, y: 209.104), control: CGPoint(x: 486.872, y: 210.232))
        pathRef41.addQuadCurve(to: CGPoint(x: 489.152, y: 207.28), control: CGPoint(x: 488.12, y: 207.976))
        pathRef41.addQuadCurve(to: CGPoint(x: 491.672, y: 206.584), control: CGPoint(x: 490.184, y: 206.584))
        pathRef41.addQuadCurve(to: CGPoint(x: 495.296, y: 207.952), control: CGPoint(x: 493.88, y: 206.584))
        pathRef41.addQuadCurve(to: CGPoint(x: 496.712, y: 211.768), control: CGPoint(x: 496.712, y: 209.32))
        pathRef41.addQuadCurve(to: CGPoint(x: 496.016, y: 214.504), control: CGPoint(x: 496.712, y: 213.304))
        pathRef41.addQuadCurve(to: CGPoint(x: 494.288, y: 216.664), control: CGPoint(x: 495.32, y: 215.704))
        pathRef41.addQuadCurve(to: CGPoint(x: 492.008, y: 218.416), control: CGPoint(x: 493.256, y: 217.624))
        pathRef41.addQuadCurve(to: CGPoint(x: 489.656, y: 219.976), control: CGPoint(x: 490.76, y: 219.208))
        pathRef41.addQuadCurve(to: CGPoint(x: 485.552, y: 222.904), control: CGPoint(x: 487.496, y: 221.464))
        pathRef41.addQuadCurve(to: CGPoint(x: 482.168, y: 226.048), control: CGPoint(x: 483.608, y: 224.344))
        pathRef41.addQuadCurve(to: CGPoint(x: 479.888, y: 229.912), control: CGPoint(x: 480.728, y: 227.752))
        pathRef41.addQuadCurve(to: CGPoint(x: 479.048, y: 235), control: CGPoint(x: 479.048, y: 232.072))
        pathRef41.addLine(to: CGPoint(x: 503.72, y: 235))
        pathRef41.addLine(to: CGPoint(x: 503.72, y: 229.144))
        pathRef41.addLine(to: CGPoint(x: 487.832, y: 229.144))
        pathRef41.addQuadCurve(to: CGPoint(x: 490.712, y: 226.12), control: CGPoint(x: 489.08, y: 227.416))
        pathRef41.addQuadCurve(to: CGPoint(x: 494.072, y: 223.696), control: CGPoint(x: 492.344, y: 224.824))
        pathRef41.addQuadCurve(to: CGPoint(x: 497.504, y: 221.416), control: CGPoint(x: 495.8, y: 222.568))
        pathRef41.addQuadCurve(to: CGPoint(x: 500.552, y: 218.848), control: CGPoint(x: 499.208, y: 220.264))
        pathRef41.addQuadCurve(to: CGPoint(x: 502.712, y: 215.608), control: CGPoint(x: 501.896, y: 217.432))
        pathRef41.addQuadCurve(to: CGPoint(x: 503.528, y: 211.24), control: CGPoint(x: 503.528, y: 213.784))
        pathRef41.addQuadCurve(to: CGPoint(x: 502.592, y: 206.824), control: CGPoint(x: 503.528, y: 208.792))
        pathRef41.addQuadCurve(to: CGPoint(x: 500.072, y: 203.512), control: CGPoint(x: 501.656, y: 204.856))
        pathRef41.addQuadCurve(to: CGPoint(x: 496.4, y: 201.448), control: CGPoint(x: 498.488, y: 202.168))
        pathRef41.addQuadCurve(to: CGPoint(x: 492.008, y: 200.728), control: CGPoint(x: 494.312, y: 200.728))
        pathRef41.addQuadCurve(to: CGPoint(x: 486.656, y: 201.76), control: CGPoint(x: 488.984, y: 200.728))
        pathRef41.addQuadCurve(to: CGPoint(x: 482.792, y: 204.64), control: CGPoint(x: 484.328, y: 202.792))
        pathRef41.addQuadCurve(to: CGPoint(x: 480.488, y: 208.96), control: CGPoint(x: 481.256, y: 206.488))
        pathRef41.addQuadCurve(to: CGPoint(x: 479.816, y: 214.312), control: CGPoint(x: 479.72, y: 211.432))
        pathRef41.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef41)
        ctx.fillPath()
        
        
        /*  Shape 42  */
        let pathRef42 = CGMutablePath()
        pathRef42.move(to: CGPoint(x: 497.136, y: 406.544))
        pathRef42.addLine(to: CGPoint(x: 497.136, y: 418.208))
        pathRef42.addLine(to: CGPoint(x: 488.304, y: 418.208))
        pathRef42.addLine(to: CGPoint(x: 496.992, y: 406.544))
        pathRef42.closeSubpath()
        pathRef42.move(to: CGPoint(x: 497.136, y: 423.824))
        pathRef42.addLine(to: CGPoint(x: 497.136, y: 431.6))
        pathRef42.addLine(to: CGPoint(x: 503.616, y: 431.6))
        pathRef42.addLine(to: CGPoint(x: 503.616, y: 423.824))
        pathRef42.addLine(to: CGPoint(x: 508.08, y: 423.824))
        pathRef42.addLine(to: CGPoint(x: 508.08, y: 418.208))
        pathRef42.addLine(to: CGPoint(x: 503.616, y: 418.208))
        pathRef42.addLine(to: CGPoint(x: 503.616, y: 398))
        pathRef42.addLine(to: CGPoint(x: 497.52, y: 398))
        pathRef42.addLine(to: CGPoint(x: 482.928, y: 417.584))
        pathRef42.addLine(to: CGPoint(x: 482.928, y: 423.824))
        pathRef42.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef42)
        ctx.fillPath()
        
        
        /*  Shape 43  */
        let pathRef43 = CGMutablePath()
        pathRef43.move(to: CGPoint(x: 428.44, y: 480.203))
        pathRef43.addLine(to: CGPoint(x: 428.44, y: 474.587))
        pathRef43.addLine(to: CGPoint(x: 409.672, y: 474.587))
        pathRef43.addLine(to: CGPoint(x: 406.36, y: 493.163))
        pathRef43.addLine(to: CGPoint(x: 412.504, y: 493.163))
        pathRef43.addQuadCurve(to: CGPoint(x: 414.664, y: 491.123), control: CGPoint(x: 413.512, y: 491.771))
        pathRef43.addQuadCurve(to: CGPoint(x: 417.64, y: 490.475), control: CGPoint(x: 415.816, y: 490.475))
        pathRef43.addQuadCurve(to: CGPoint(x: 420.088, y: 490.955), control: CGPoint(x: 419.032, y: 490.475))
        pathRef43.addQuadCurve(to: CGPoint(x: 421.912, y: 492.299), control: CGPoint(x: 421.144, y: 491.435))
        pathRef43.addQuadCurve(to: CGPoint(x: 423.064, y: 494.315), control: CGPoint(x: 422.68, y: 493.163))
        pathRef43.addQuadCurve(to: CGPoint(x: 423.448, y: 496.763), control: CGPoint(x: 423.448, y: 495.467))
        pathRef43.addQuadCurve(to: CGPoint(x: 423.04, y: 499.187), control: CGPoint(x: 423.448, y: 498.011))
        pathRef43.addQuadCurve(to: CGPoint(x: 421.888, y: 501.251), control: CGPoint(x: 422.632, y: 500.363))
        pathRef43.addQuadCurve(to: CGPoint(x: 420.064, y: 502.691), control: CGPoint(x: 421.144, y: 502.139))
        pathRef43.addQuadCurve(to: CGPoint(x: 417.64, y: 503.243), control: CGPoint(x: 418.984, y: 503.243))
        pathRef43.addQuadCurve(to: CGPoint(x: 413.848, y: 501.875), control: CGPoint(x: 415.336, y: 503.243))
        pathRef43.addQuadCurve(to: CGPoint(x: 412.12, y: 498.203), control: CGPoint(x: 412.36, y: 500.507))
        pathRef43.addLine(to: CGPoint(x: 405.304, y: 498.203))
        pathRef43.addQuadCurve(to: CGPoint(x: 406.384, y: 502.835), control: CGPoint(x: 405.352, y: 500.843))
        pathRef43.addQuadCurve(to: CGPoint(x: 409.144, y: 506.171), control: CGPoint(x: 407.416, y: 504.827))
        pathRef43.addQuadCurve(to: CGPoint(x: 413.104, y: 508.163), control: CGPoint(x: 410.872, y: 507.515))
        pathRef43.addQuadCurve(to: CGPoint(x: 417.784, y: 508.811), control: CGPoint(x: 415.336, y: 508.811))
        pathRef43.addQuadCurve(to: CGPoint(x: 422.584, y: 507.971), control: CGPoint(x: 420.328, y: 508.859))
        pathRef43.addQuadCurve(to: CGPoint(x: 426.544, y: 505.451), control: CGPoint(x: 424.84, y: 507.083))
        pathRef43.addQuadCurve(to: CGPoint(x: 429.256, y: 501.587), control: CGPoint(x: 428.248, y: 503.819))
        pathRef43.addQuadCurve(to: CGPoint(x: 430.264, y: 496.763), control: CGPoint(x: 430.264, y: 499.355))
        pathRef43.addQuadCurve(to: CGPoint(x: 429.568, y: 492.323), control: CGPoint(x: 430.264, y: 494.411))
        pathRef43.addQuadCurve(to: CGPoint(x: 427.552, y: 488.699), control: CGPoint(x: 428.872, y: 490.235))
        pathRef43.addQuadCurve(to: CGPoint(x: 424.312, y: 486.251), control: CGPoint(x: 426.232, y: 487.163))
        pathRef43.addQuadCurve(to: CGPoint(x: 419.896, y: 485.339), control: CGPoint(x: 422.392, y: 485.339))
        pathRef43.addQuadCurve(to: CGPoint(x: 416.296, y: 485.939), control: CGPoint(x: 417.88, y: 485.339))
        pathRef43.addQuadCurve(to: CGPoint(x: 413.32, y: 487.931), control: CGPoint(x: 414.712, y: 486.539))
        pathRef43.addLine(to: CGPoint(x: 413.224, y: 487.835))
        pathRef43.addLine(to: CGPoint(x: 414.568, y: 480.203))
        pathRef43.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef43)
        ctx.fillPath()
        
        
        /*  Shape 44  */
        let pathRef44 = CGMutablePath()
        pathRef44.move(to: CGPoint(x: 230.944, y: 480.756))
        pathRef44.addLine(to: CGPoint(x: 230.944, y: 474.9))
        pathRef44.addLine(to: CGPoint(x: 208, y: 474.9))
        pathRef44.addLine(to: CGPoint(x: 208, y: 481.236))
        pathRef44.addLine(to: CGPoint(x: 223.936, y: 481.236))
        pathRef44.addQuadCurve(to: CGPoint(x: 216.184, y: 494.004), control: CGPoint(x: 219.136, y: 487.044))
        pathRef44.addQuadCurve(to: CGPoint(x: 212.656, y: 508.5), control: CGPoint(x: 213.232, y: 500.964))
        pathRef44.addLine(to: CGPoint(x: 219.952, y: 508.5))
        pathRef44.addQuadCurve(to: CGPoint(x: 220.744, y: 501.252), control: CGPoint(x: 220, y: 505.14))
        pathRef44.addQuadCurve(to: CGPoint(x: 222.856, y: 493.572), control: CGPoint(x: 221.488, y: 497.364))
        pathRef44.addQuadCurve(to: CGPoint(x: 226.264, y: 486.42), control: CGPoint(x: 224.224, y: 489.78))
        pathRef44.addQuadCurve(to: CGPoint(x: 230.944, y: 480.756), control: CGPoint(x: 228.304, y: 483.06))
        pathRef44.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef44)
        ctx.fillPath()
        
        
        /*  Shape 45  */
        let pathRef45 = CGMutablePath()
        pathRef45.move(to: CGPoint(x: 142.77, y: 407.144))
        pathRef45.addQuadCurve(to: CGPoint(x: 143.178, y: 405.128), control: CGPoint(x: 142.77, y: 405.992))
        pathRef45.addQuadCurve(to: CGPoint(x: 144.306, y: 403.688), control: CGPoint(x: 143.586, y: 404.264))
        pathRef45.addQuadCurve(to: CGPoint(x: 145.962, y: 402.8), control: CGPoint(x: 145.026, y: 403.112))
        pathRef45.addQuadCurve(to: CGPoint(x: 147.906, y: 402.488), control: CGPoint(x: 146.898, y: 402.488))
        pathRef45.addQuadCurve(to: CGPoint(x: 150.474, y: 402.968), control: CGPoint(x: 149.49, y: 402.488))
        pathRef45.addQuadCurve(to: CGPoint(x: 152.01, y: 404.168), control: CGPoint(x: 151.458, y: 403.448))
        pathRef45.addQuadCurve(to: CGPoint(x: 152.754, y: 405.68), control: CGPoint(x: 152.562, y: 404.888))
        pathRef45.addQuadCurve(to: CGPoint(x: 152.946, y: 407.144), control: CGPoint(x: 152.946, y: 406.472))
        pathRef45.addQuadCurve(to: CGPoint(x: 151.506, y: 410.432), control: CGPoint(x: 152.946, y: 409.304))
        pathRef45.addQuadCurve(to: CGPoint(x: 147.906, y: 411.56), control: CGPoint(x: 150.066, y: 411.56))
        pathRef45.addQuadCurve(to: CGPoint(x: 144.306, y: 410.432), control: CGPoint(x: 145.842, y: 411.56))
        pathRef45.addQuadCurve(to: CGPoint(x: 142.77, y: 407.144), control: CGPoint(x: 142.77, y: 409.304))
        pathRef45.closeSubpath()
        pathRef45.move(to: CGPoint(x: 136.578, y: 406.52))
        pathRef45.addQuadCurve(to: CGPoint(x: 137.826, y: 410.888), control: CGPoint(x: 136.578, y: 409.016))
        pathRef45.addQuadCurve(to: CGPoint(x: 141.522, y: 413.432), control: CGPoint(x: 139.074, y: 412.76))
        pathRef45.addLine(to: CGPoint(x: 141.522, y: 413.528))
        pathRef45.addQuadCurve(to: CGPoint(x: 136.842, y: 416.408), control: CGPoint(x: 138.498, y: 414.248))
        pathRef45.addQuadCurve(to: CGPoint(x: 135.186, y: 421.784), control: CGPoint(x: 135.186, y: 418.568))
        pathRef45.addQuadCurve(to: CGPoint(x: 136.266, y: 426.488), control: CGPoint(x: 135.186, y: 424.52))
        pathRef45.addQuadCurve(to: CGPoint(x: 139.146, y: 429.752), control: CGPoint(x: 137.346, y: 428.456))
        pathRef45.addQuadCurve(to: CGPoint(x: 143.226, y: 431.648), control: CGPoint(x: 140.946, y: 431.048))
        pathRef45.addQuadCurve(to: CGPoint(x: 147.954, y: 432.248), control: CGPoint(x: 145.506, y: 432.248))
        pathRef45.addQuadCurve(to: CGPoint(x: 152.562, y: 431.6), control: CGPoint(x: 150.306, y: 432.248))
        pathRef45.addQuadCurve(to: CGPoint(x: 156.594, y: 429.656), control: CGPoint(x: 154.818, y: 430.952))
        pathRef45.addQuadCurve(to: CGPoint(x: 159.45, y: 426.392), control: CGPoint(x: 158.37, y: 428.36))
        pathRef45.addQuadCurve(to: CGPoint(x: 160.53, y: 421.736), control: CGPoint(x: 160.53, y: 424.424))
        pathRef45.addQuadCurve(to: CGPoint(x: 158.898, y: 416.384), control: CGPoint(x: 160.53, y: 418.568))
        pathRef45.addQuadCurve(to: CGPoint(x: 154.242, y: 413.528), control: CGPoint(x: 157.266, y: 414.2))
        pathRef45.addLine(to: CGPoint(x: 154.242, y: 413.432))
        pathRef45.addQuadCurve(to: CGPoint(x: 157.914, y: 410.744), control: CGPoint(x: 156.69, y: 412.616))
        pathRef45.addQuadCurve(to: CGPoint(x: 159.138, y: 406.376), control: CGPoint(x: 159.138, y: 408.872))
        pathRef45.addQuadCurve(to: CGPoint(x: 158.562, y: 403.568), control: CGPoint(x: 159.138, y: 405.128))
        pathRef45.addQuadCurve(to: CGPoint(x: 156.666, y: 400.64), control: CGPoint(x: 157.986, y: 402.008))
        pathRef45.addQuadCurve(to: CGPoint(x: 153.186, y: 398.312), control: CGPoint(x: 155.346, y: 399.272))
        pathRef45.addQuadCurve(to: CGPoint(x: 147.906, y: 397.352), control: CGPoint(x: 151.026, y: 397.352))
        pathRef45.addQuadCurve(to: CGPoint(x: 143.826, y: 397.928), control: CGPoint(x: 145.842, y: 397.352))
        pathRef45.addQuadCurve(to: CGPoint(x: 140.202, y: 399.656), control: CGPoint(x: 141.81, y: 398.504))
        pathRef45.addQuadCurve(to: CGPoint(x: 137.586, y: 402.536), control: CGPoint(x: 138.594, y: 400.808))
        pathRef45.addQuadCurve(to: CGPoint(x: 136.578, y: 406.52), control: CGPoint(x: 136.578, y: 404.264))
        pathRef45.closeSubpath()
        pathRef45.move(to: CGPoint(x: 142.002, y: 421.448))
        pathRef45.addQuadCurve(to: CGPoint(x: 143.73, y: 417.488), control: CGPoint(x: 142.002, y: 418.856))
        pathRef45.addQuadCurve(to: CGPoint(x: 147.954, y: 416.12), control: CGPoint(x: 145.458, y: 416.12))
        pathRef45.addQuadCurve(to: CGPoint(x: 150.186, y: 416.504), control: CGPoint(x: 149.154, y: 416.12))
        pathRef45.addQuadCurve(to: CGPoint(x: 152.01, y: 417.608), control: CGPoint(x: 151.218, y: 416.888))
        pathRef45.addQuadCurve(to: CGPoint(x: 153.258, y: 419.312), control: CGPoint(x: 152.802, y: 418.328))
        pathRef45.addQuadCurve(to: CGPoint(x: 153.714, y: 421.496), control: CGPoint(x: 153.714, y: 420.296))
        pathRef45.addQuadCurve(to: CGPoint(x: 153.282, y: 423.8), control: CGPoint(x: 153.714, y: 422.744))
        pathRef45.addQuadCurve(to: CGPoint(x: 152.058, y: 425.6), control: CGPoint(x: 152.85, y: 424.856))
        pathRef45.addQuadCurve(to: CGPoint(x: 150.234, y: 426.752), control: CGPoint(x: 151.266, y: 426.344))
        pathRef45.addQuadCurve(to: CGPoint(x: 147.954, y: 427.16), control: CGPoint(x: 149.202, y: 427.16))
        pathRef45.addQuadCurve(to: CGPoint(x: 145.65, y: 426.752), control: CGPoint(x: 146.754, y: 427.16))
        pathRef45.addQuadCurve(to: CGPoint(x: 143.754, y: 425.6), control: CGPoint(x: 144.546, y: 426.344))
        pathRef45.addQuadCurve(to: CGPoint(x: 142.482, y: 423.8), control: CGPoint(x: 142.962, y: 424.856))
        pathRef45.addQuadCurve(to: CGPoint(x: 142.002, y: 421.448), control: CGPoint(x: 142.002, y: 422.744))
        pathRef45.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef45)
        ctx.fillPath()
        
        
        /*  10  */
        /*  Shape 46  */
        let pathRef46 = CGMutablePath()
        pathRef46.move(to: CGPoint(x: 150.45, y: 234.688))
        pathRef46.addLine(to: CGPoint(x: 150.45, y: 201.088))
        pathRef46.addLine(to: CGPoint(x: 145.026, y: 201.088))
        pathRef46.addQuadCurve(to: CGPoint(x: 143.826, y: 204.304), control: CGPoint(x: 144.738, y: 203.008))
        pathRef46.addQuadCurve(to: CGPoint(x: 141.594, y: 206.392), control: CGPoint(x: 142.914, y: 205.6))
        pathRef46.addQuadCurve(to: CGPoint(x: 138.618, y: 207.496), control: CGPoint(x: 140.274, y: 207.184))
        pathRef46.addQuadCurve(to: CGPoint(x: 135.186, y: 207.76), control: CGPoint(x: 136.962, y: 207.808))
        pathRef46.addLine(to: CGPoint(x: 135.186, y: 212.896))
        pathRef46.addLine(to: CGPoint(x: 143.634, y: 212.896))
        pathRef46.addLine(to: CGPoint(x: 143.634, y: 234.688))
        pathRef46.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef46)
        ctx.fillPath()
        
        
        /*  Shape 47  */
        let pathRef47 = CGMutablePath()
        pathRef47.move(to: CGPoint(x: 166.146, y: 217.744))
        pathRef47.addQuadCurve(to: CGPoint(x: 166.17, y: 215.656), control: CGPoint(x: 166.146, y: 216.88))
        pathRef47.addQuadCurve(to: CGPoint(x: 166.338, y: 213.136), control: CGPoint(x: 166.194, y: 214.432))
        pathRef47.addQuadCurve(to: CGPoint(x: 166.818, y: 210.568), control: CGPoint(x: 166.482, y: 211.84))
        pathRef47.addQuadCurve(to: CGPoint(x: 167.754, y: 208.288), control: CGPoint(x: 167.154, y: 209.296))
        pathRef47.addQuadCurve(to: CGPoint(x: 169.29, y: 206.656), control: CGPoint(x: 168.354, y: 207.28))
        pathRef47.addQuadCurve(to: CGPoint(x: 171.618, y: 206.032), control: CGPoint(x: 170.226, y: 206.032))
        pathRef47.addQuadCurve(to: CGPoint(x: 173.97, y: 206.656), control: CGPoint(x: 173.01, y: 206.032))
        pathRef47.addQuadCurve(to: CGPoint(x: 175.554, y: 208.288), control: CGPoint(x: 174.93, y: 207.28))
        pathRef47.addQuadCurve(to: CGPoint(x: 176.49, y: 210.568), control: CGPoint(x: 176.178, y: 209.296))
        pathRef47.addQuadCurve(to: CGPoint(x: 176.97, y: 213.136), control: CGPoint(x: 176.802, y: 211.84))
        pathRef47.addQuadCurve(to: CGPoint(x: 177.162, y: 215.656), control: CGPoint(x: 177.138, y: 214.432))
        pathRef47.addQuadCurve(to: CGPoint(x: 177.186, y: 217.744), control: CGPoint(x: 177.186, y: 216.88))
        pathRef47.addQuadCurve(to: CGPoint(x: 177.09, y: 221.224), control: CGPoint(x: 177.186, y: 219.184))
        pathRef47.addQuadCurve(to: CGPoint(x: 176.49, y: 225.16), control: CGPoint(x: 176.994, y: 223.264))
        pathRef47.addQuadCurve(to: CGPoint(x: 174.858, y: 228.4), control: CGPoint(x: 175.986, y: 227.056))
        pathRef47.addQuadCurve(to: CGPoint(x: 171.618, y: 229.744), control: CGPoint(x: 173.73, y: 229.744))
        pathRef47.addQuadCurve(to: CGPoint(x: 168.45, y: 228.4), control: CGPoint(x: 169.554, y: 229.744))
        pathRef47.addQuadCurve(to: CGPoint(x: 166.842, y: 225.16), control: CGPoint(x: 167.346, y: 227.056))
        pathRef47.addQuadCurve(to: CGPoint(x: 166.242, y: 221.224), control: CGPoint(x: 166.338, y: 223.264))
        pathRef47.addQuadCurve(to: CGPoint(x: 166.146, y: 217.744), control: CGPoint(x: 166.146, y: 219.184))
        pathRef47.closeSubpath()
        pathRef47.move(to: CGPoint(x: 159.33, y: 217.744))
        pathRef47.addQuadCurve(to: CGPoint(x: 160.314, y: 226.168), control: CGPoint(x: 159.33, y: 222.784))
        pathRef47.addQuadCurve(to: CGPoint(x: 162.978, y: 231.568), control: CGPoint(x: 161.298, y: 229.552))
        pathRef47.addQuadCurve(to: CGPoint(x: 166.89, y: 234.448), control: CGPoint(x: 164.658, y: 233.584))
        pathRef47.addQuadCurve(to: CGPoint(x: 171.618, y: 235.312), control: CGPoint(x: 169.122, y: 235.312))
        pathRef47.addQuadCurve(to: CGPoint(x: 176.394, y: 234.448), control: CGPoint(x: 174.162, y: 235.312))
        pathRef47.addQuadCurve(to: CGPoint(x: 180.33, y: 231.568), control: CGPoint(x: 178.626, y: 233.584))
        pathRef47.addQuadCurve(to: CGPoint(x: 183.018, y: 226.168), control: CGPoint(x: 182.034, y: 229.552))
        pathRef47.addQuadCurve(to: CGPoint(x: 184.002, y: 217.744), control: CGPoint(x: 184.002, y: 222.784))
        pathRef47.addQuadCurve(to: CGPoint(x: 183.018, y: 209.512), control: CGPoint(x: 184.002, y: 212.848))
        pathRef47.addQuadCurve(to: CGPoint(x: 180.33, y: 204.16), control: CGPoint(x: 182.034, y: 206.176))
        pathRef47.addQuadCurve(to: CGPoint(x: 176.394, y: 201.28), control: CGPoint(x: 178.626, y: 202.144))
        pathRef47.addQuadCurve(to: CGPoint(x: 171.618, y: 200.416), control: CGPoint(x: 174.162, y: 200.416))
        pathRef47.addQuadCurve(to: CGPoint(x: 166.89, y: 201.28), control: CGPoint(x: 169.122, y: 200.416))
        pathRef47.addQuadCurve(to: CGPoint(x: 162.978, y: 204.16), control: CGPoint(x: 164.658, y: 202.144))
        pathRef47.addQuadCurve(to: CGPoint(x: 160.314, y: 209.512), control: CGPoint(x: 161.298, y: 206.176))
        pathRef47.addQuadCurve(to: CGPoint(x: 159.33, y: 217.744), control: CGPoint(x: 159.33, y: 212.848))
        pathRef47.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef47)
        ctx.fillPath()
        
        
        /*  11  */
        /*  Shape 48  */
        let pathRef48 = CGMutablePath()
        pathRef48.move(to: CGPoint(x: 212.264, y: 166.6))
        pathRef48.addLine(to: CGPoint(x: 212.264, y: 133))
        pathRef48.addLine(to: CGPoint(x: 206.84, y: 133))
        pathRef48.addQuadCurve(to: CGPoint(x: 205.64, y: 136.216), control: CGPoint(x: 206.552, y: 134.92))
        pathRef48.addQuadCurve(to: CGPoint(x: 203.408, y: 138.304), control: CGPoint(x: 204.728, y: 137.512))
        pathRef48.addQuadCurve(to: CGPoint(x: 200.432, y: 139.408), control: CGPoint(x: 202.088, y: 139.096))
        pathRef48.addQuadCurve(to: CGPoint(x: 197, y: 139.672), control: CGPoint(x: 198.776, y: 139.72))
        pathRef48.addLine(to: CGPoint(x: 197, y: 144.808))
        pathRef48.addLine(to: CGPoint(x: 205.448, y: 144.808))
        pathRef48.addLine(to: CGPoint(x: 205.448, y: 166.6))
        pathRef48.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef48)
        ctx.fillPath()
        
        
        /*  Shape 49  */
        let pathRef49 = CGMutablePath()
        pathRef49.move(to: CGPoint(x: 238.952, y: 166.6))
        pathRef49.addLine(to: CGPoint(x: 238.952, y: 133))
        pathRef49.addLine(to: CGPoint(x: 233.528, y: 133))
        pathRef49.addQuadCurve(to: CGPoint(x: 232.328, y: 136.216), control: CGPoint(x: 233.24, y: 134.92))
        pathRef49.addQuadCurve(to: CGPoint(x: 230.096, y: 138.304), control: CGPoint(x: 231.416, y: 137.512))
        pathRef49.addQuadCurve(to: CGPoint(x: 227.12, y: 139.408), control: CGPoint(x: 228.776, y: 139.096))
        pathRef49.addQuadCurve(to: CGPoint(x: 223.688, y: 139.672), control: CGPoint(x: 225.464, y: 139.72))
        pathRef49.addLine(to: CGPoint(x: 223.688, y: 144.808))
        pathRef49.addLine(to: CGPoint(x: 232.136, y: 144.808))
        pathRef49.addLine(to: CGPoint(x: 232.136, y: 166.6))
        pathRef49.closeSubpath()
        
        ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
        ctx.addPath(pathRef49)
        ctx.fillPath()

    }
    

}
