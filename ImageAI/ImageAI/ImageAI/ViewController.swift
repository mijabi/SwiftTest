//
//  ViewController.swift
//  ImageAI
//
//  Created by 佐藤雅之 on 2017/12/02.
//  Copyright © 2017年 Mijabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {// delegate 画面のイベントとプログラムを中継する。
    

    @IBOutlet weak var photoDisplay: UIImageView!

    @IBOutlet weak var photoInfoDisplay: UITextView!
    
    var imagePicker: UIImagePickerController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func takePhoto(_ sender: Any) {
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        photoDisplay.image = info[UIImagePickerControllerOriginalImage] as? UIImage // as? → UIImage に変換する
        imagePicker.dismiss(animated: true, completion: nil)
        
    }
}

