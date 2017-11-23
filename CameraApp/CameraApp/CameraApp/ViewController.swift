//
//  ViewController.swift
//  CameraApp
//
//  Created by 佐藤雅之 on 2017/11/21.
//  Copyright © 2017年 Mijabi. All rights reserved.
//

import UIKit

// UINavigatorControllerDelegate = 写真を取り終わった
// UIImagePickerControllerDegegate = 写真を選択し終わった
class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var photoImage: UIImageView!
    
    @IBAction func cameraLaunchAction(_ sender: Any) {
        // カメラが使えるかどうか判定
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            print("Camera can be used.")
        } else {
            print("Camera is not available.")
        }
    }
    
    @IBAction func shareAction(_ sender: Any) {
    }

}

