//
//  ViewController.swift
//  ARC
//
//  Created by William Peroche on 29/08/18.
//  Copyright © 2018 William Peroche. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @objc @IBOutlet var dotView: DottedLineView!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dotView.backgroundColor = UIColor(patternImage: UIImage(named: "menuClose")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        
//        self.drawDottedLine(startPoint: CGPoint(x: dottedView.bounds.minX, y: dottedView.bounds.minY), endPoint: CGPoint(x: dottedView.bounds.maxX, y: dottedView.bounds.minY), view: dottedView)
        
    }
    
    
    func drawDottedLine(startPoint: CGPoint, endPoint: CGPoint, view: UIView) {
        let shapeLayer = CAShapeLayer()
        
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.lineWidth = 2
        shapeLayer.lineDashPattern = [0.01, 4]
        shapeLayer.lineCap = kCALineCapRound
        
        let path = CGMutablePath()
        path.addLines(between: [startPoint, endPoint])
        shapeLayer.path = path
        view.layer.addSublayer(shapeLayer)
        
    }

}

