//
//  DottedLineView.swift
//  ASBMobile
//
//  Created by William Peroche on 13/09/18.
//  Copyright © 2018 ASB. All rights reserved.
//

import Foundation
import UIKit

class DottedLineView: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
//        self.backgroundColor = UIColor.clear
//        let startPoint = CGPoint(x: self.frame.minX, y: self.frame.minY)
//        let endPoint = CGPoint(x: self.frame.maxX, y: self.frame.minY)
//        if let sublayers = self.layer.sublayers {
//            for layer in sublayers {
//                if let caShapeLayer = layer as? CAShapeLayer {
//                    caShapeLayer.removeFromSuperlayer()
//                }
//            }
//        }
//
//        let shapeLayer = CAShapeLayer()
//
//        shapeLayer.strokeColor = UIColor.red.cgColor
//        shapeLayer.lineWidth = 2
//        shapeLayer.lineDashPattern = [0.01, 4]
//        shapeLayer.lineCap = kCALineCapRound
//
//        let path = CGMutablePath()
//        path.addLines(between: [startPoint, endPoint])
//        shapeLayer.path = path
//        self.layer.addSublayer(shapeLayer)
        
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        //Set the points of the line
        context.setLineWidth(2.0)
        
        //set colour
        context.setStrokeColor(UIColor.orange.cgColor)
        
        //Set Line dash
        context.setLineDash(phase: 0.0, lengths: [16.0, 32.0])
        
        //line border radius
//        context.setLineCap(CGLineCap(rawValue: 500)!)
        
        //initial point and end point on the x an y axes
        context.move(to: CGPoint(x: 0, y: 0))
        context.addLine(to: CGPoint(x:0, y: 10))
        
        //To actually make the line
        context.strokePath()
    }
}
