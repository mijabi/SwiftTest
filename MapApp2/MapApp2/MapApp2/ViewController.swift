//
//  ViewController.swift
//  MapApp2
//
//  Created by Mijabi on 2017/11/13.
//  Copyright © 2017年 Mijabi. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        inputText.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()//キーボードを閉じる
        let searchKeyword = textField.text
        print(searchKeyword!)//値が空でも大丈夫なようにアンラップ（!をつける）
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(searchKeyword!, completionHandler: {(placemarks: [CLPlacemark]?, error:Error?) in
            if let placemarks = placemarks?[0] {
                if let targetCoordinate = placemarks.location?.coordinate {
                    print(targetCoordinate)
                    let pin = MKPointAnnotation()
                    pin.coordinate = targetCoordinate
                    pin.title = searchKeyword
                    
                    self.displayMap.addAnnotation(pin)
                    self.displayMap.region = MKCoordinateRegionMakeWithDistance(targetCoordinate, 500, 500)
                }
            }
        })
        // 3-21
        return true
    }

    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var displayMap: MKMapView!
    
}

