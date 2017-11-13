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
    let numRows:Double = 4
    let numColumns:Double = 4
    let btnMargin:Double = 10
    let labelHeight:Double = 190
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let screenWidth:Double = Double(UIScreen.main.bounds.size.width)
        let screenHeight:Double = Double(UIScreen.main.bounds.size.height)

        
        resultLabel.frame = CGRect(x: btnMargin, y: 40, width: screenWidth - (btnMargin * 2), height: 150)
        resultLabel.backgroundColor = UIColor.lightGray
        resultLabel.text = "0"
        resultLabel.textAlignment = NSTextAlignment.right
        self.view.addSubview(resultLabel)

//        for i in (0 ..< 5).reversed() { // 反転

        let btnLabel = ["7", "8", "9", "/", "4", "5", "6", "x", "1", "2", "3", "-", "0", "C", "+", "="]
        
        for i:Int in 0..<Int(numRows) {
            for j:Int in 0..<Int(numColumns) {
                let button = UIButton()
                let btnWidth:Double = (screenWidth - (btnMargin * (numColumns + 1))) / numColumns
                let btnHeight:Double = (screenHeight - labelHeight - (btnMargin * (numRows + 1))) / numRows
                let btnX:Double = btnMargin + (screenWidth - btnMargin) / numColumns * Double(j)
                let btnY:Double = labelHeight + btnMargin + (screenHeight - labelHeight - btnMargin) / numRows * Double(i)
                //        button.frame = CGRect(x: btnX, y: btnY, width: btnWidth, height: btnHeight)
                button.frame = CGRect(x: btnX, y: btnY, width: btnWidth, height: btnHeight)
                button.backgroundColor = UIColor.blue
                let btnNum = i * Int(numRows) + j
                button.setTitle(btnLabel[btnNum], for: UIControlState.normal)
                self.view.addSubview(button)

            }
        }
/*
        let button = UIButton()
        let btnWidth:Double = (screenWidth - (btnMargin * (numColumns + 1))) / numColumns
        let btnHeight:Double = (screenHeight - labelHeight - (btnMargin * (numRows + 1))) / numRows
        let btnX:Double = btnMargin
        let btnY:Double = labelHeight + btnMargin
//        button.frame = CGRect(x: btnX, y: btnY, width: btnWidth, height: btnHeight)
        button.frame = CGRect(x: btnX, y: btnY, width: btnWidth, height: btnHeight)
        button.backgroundColor = UIColor.blue
        self.view.addSubview(button)
*/
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

