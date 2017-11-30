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
        let url = "https://query.yahooapis.com/v1/public/yql?q=select%20astronomy.sunrise%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22\(cityNameInput.text!)%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
        getURL(url: url)
    }
    
    func getURL(url: String) {
        do {
            let apiURL = URL(string: url)!
            let data = try Data(contentsOf: apiURL)
            let json = try JSONSerialization.jsonObject(with: data) as! [String:Any]
//            print(json)
            let query = json["query"] as! [String:Any] // これは型付き変数ではなく、値が２つの意味！！！！？
            let results = query["results"] as! [String:Any]
            let channel = results["channel"] as! [String:Any]
            let astronomy = channel["astronomy"] as! [String:Any]
            self.sunriseTimeLabel.text = "日の出時刻：\(astronomy["sunrise"]!)"
        } catch {
            self.sunriseTimeLabel.text = "サーバに接続できません"
        }

        
    }
    
    
}

