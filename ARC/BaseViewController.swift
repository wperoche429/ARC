//
//  BaseViewController.swift
//  ARC
//
//  Created by William Peroche on 29/08/18.
//  Copyright © 2018 William Peroche. All rights reserved.
//


import UIKit

class BaseViewController: UIViewController {

    var block1 : (() -> ())?
    var block2 : (() -> ())?
    
    var message = "Hello"
    
    deinit {
        print("deinit of \(NSStringFromClass(type(of: self)))\n")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad \(NSStringFromClass(type(of: self)))")
        self.title = NSStringFromClass(type(of: self))
    }

    func sayHello() {
        print(self.message)
    }
}
