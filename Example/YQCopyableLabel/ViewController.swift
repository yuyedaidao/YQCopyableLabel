//
//  ViewController.swift
//  YQCopyableLabel
//
//  Created by WYQ on 11/30/2021.
//  Copyright (c) 2021 WYQ. All rights reserved.
//

import UIKit
import YQCopyableLabel

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label = YQCopyableLabel()
        label.text = "我是一只大老虎"
        label.sizeToFit()
        self.view.addSubview(label)
        label.center = self.view.center
        
        
        let label1 = YQCopyableLabel()
        label1.attributedText = NSAttributedString(string: "嗷呜嗷呜~")
        label1.sizeToFit()
        label1.center = CGPoint(x: 40, y: 120)
        self.view.addSubview(label1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

