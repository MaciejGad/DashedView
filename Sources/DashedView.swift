//
//  DashedView.swift
//  DashedView
//
//  Created by Maciej Gad on 31 May 2019.
//  Copyright © 2019 Maciej Gad. All rights reserved.
//

// Include Foundation
@_exported import Foundation
@_exported import UIKit

open class DashedView: UIView {
    
    @IBInspectable open var dashColor: UIColor = UIColor.black {
        didSet {
            border.strokeColor = dashColor.cgColor
        }
    }
    
    @IBInspectable open var cornerRadius: CGFloat = 5 {
        didSet {
            updatePath()
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable open var lineWidth: CGFloat = 1 {
        didSet {
            updatePath()
            border.lineWidth = lineWidth
        }
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
   func setup() {
        border.strokeColor = dashColor.cgColor
        border.fillColor = nil
        border.lineDashPattern = [4, 2]
        border.lineJoin = CAShapeLayerLineJoin.round
        border.lineWidth = lineWidth
        updatePath()
        layer.addSublayer(border)
        layer.masksToBounds = true
        layer.cornerRadius = cornerRadius
    }
    
    let border = CAShapeLayer()
    
    private func updatePath() {
        border.path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).cgPath
        border.frame = bounds
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        updatePath()
    }
}
