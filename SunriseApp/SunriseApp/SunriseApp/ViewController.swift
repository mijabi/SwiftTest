//
//  ViewController.swift
//  SunriseApp
//
//  Created by 佐藤雅之 on 2017/11/29.
//  Copyright © 2017年 Mijabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var cityNameInput: UITextField!
    
    @IBOutlet weak var sunriseTimeLabel: UILabel!
    
    @IBAction func findSunrise(_ sender: Any) {
    }
    
    
    
    
}

