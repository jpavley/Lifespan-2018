//
//  BarView.swift
//  Lifeclock
//
//  Created by John Pavley on 2/17/18.
//  Copyright © 2018 Epic Loot. All rights reserved.
//

import UIKit

@IBDesignable
class BarView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBInspectable var borderWith: CGFloat = 1.0 {
        didSet {
            self.layer.borderWidth = borderWith
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.shouldRasterize = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }

}
