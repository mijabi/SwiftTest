//
//  ViewController.swift
//  TImerApp
//
//  Created by 佐藤雅之 on 2017/11/23.
//  Copyright © 2017年 Mijabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer: Timer?
    var duration = 0
    let settingKey = "timerValue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let settings = UserDefaults.standard // 前回起動時の状態を保持？
        settings.register(defaults: [settingKey: 60])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var timeDisplay: UILabel!
    
    @IBAction func settingButtonAction(_ sender: Any) {
    }

    @IBAction func startTimerAction(_ sender: Any) {
        if let nowTimer = timer { // すでに実行中だったらスタートしない
            if nowTimer.isValid == true {
                return
            }
        }
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.timerStop(_:)), userInfo: nil, repeats: true)
    }

    @IBAction func stopTimerAction(_ sender: Any) {
    }
    
    func displayUpdate() -> Int {
        let settings = UserDefaults.standard
        let timerValue = settings.integer(forKey: settingKey)
        let remainSeconds = timerValue - duration
        timeDisplay.text = "あと\(remainSeconds)秒"
        return remainSeconds
    }
    
    @objc func timerStop(_ timer: Timer) { // _ は ラベルの省略という意味？
        duration += 1
        if displayUpdate() <= 0 {
            duration = 0
            timer.invalidate() // timer を無効にする
            
        }
    }
    
    
}

