//
//  ViewController.swift
//  CalcApp
//
//  Created by Mijabi on 2017/11/12.
//  Copyright © 2017 Mijabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var resultLabel = UILabel()
    let numRows = 4
    let numColumns = 4
    let btnMargin = 10
    let labelHeight = 190
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let screenWidth:Double = Double(UIScreen.main.bounds.size.width)
        let screenHeight:Double = Double(UIScreen.main.bounds.size.height)

        
        resultLabel.frame = CGRect(x: Double(btnMargin), y: 40, width: Double(screenWidth) - (Double(btnMargin) * 2), height: 150)
        resultLabel.backgroundColor = UIColor.lightGray
        resultLabel.text = "0"
        resultLabel.textAlignment = NSTextAlignment.right
        self.view.addSubview(resultLabel)
        
        let button = UIButton()
        let btnWidth = (screenWidth - (Double(btnMargin) * Double(numColumns + 1))) / Double(numColumns)
        let btnHeight = (screenHeight - Double(labelHeight) - Double(btnMargin * (numRows + 1))) / Double(numRows)
        let btnX = btnMargin
        let btnY = labelHeight + btnMargin
//        button.frame = CGRect(x: btnX, y: btnY, width: btnWidth, height: btnHeight)
        button.frame = CGRect(x: btnX, y: btnY, width: Int(btnWidth), height: Int(btnHeight))
        button.backgroundColor = UIColor.blue
        self.view.addSubview(button)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

