//
//  ViewController.swift
//  CalcApp
//
//  Created by 佐藤雅之 on 2017/11/12.
//  Copyright © 2017年 佐藤雅之. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var resultLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.frame = CGRect(x: 20, y: 20, width: 300, height: 150)
        resultLabel.backgroundColor = UIColor.lightGray
        self.view.addSubview(resultLabel)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

