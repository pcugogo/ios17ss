//
//  ViewController.swift
//  UIImagePicker
//
//  Created by 샤인 on 2017. 7. 4..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func imageUploadTouched(_ sender: UIButton) {
        let imagePcikerController:UIImagePickerController =
        UIImagePickerController()
        imagePcikerController.delegate = self
        present(imagePcikerController, animated: true, completion:  nil)
        
    
    }

    func imagePckerController(_ picker:UIImagePickerController,didFinishPickingMediaWithInfo info: [String:Any]){
        self.imageView.image =
    }
    
}

