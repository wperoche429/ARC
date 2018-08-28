//
//  ViewControllerA.swift
//  ARC
//
//  Created by William Peroche on 29/08/18.
//  Copyright © 2018 William Peroche. All rights reserved.
//

import UIKit

class ViewControllerA: BaseViewController {
    
    @IBOutlet var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.block1 = {
            self.sayHello()
            self.block2 = {
                self.sayHello()
            }
        }
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.messageLabel.text = "Retain count of \(NSStringFromClass(type(of: self))) = \(CFGetRetainCount(self))"
    }
}
