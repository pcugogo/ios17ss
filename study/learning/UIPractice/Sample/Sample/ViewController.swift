//
//  ViewController.swift
//  Sample
//
//  Created by 샤인 on 2017. 6. 12..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController,CyrcleViewDelegate,UITextFieldDelegate {

    @IBOutlet var circle1:CyrcleView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circle1.setTitleText("첫번째")
        circle1.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func didSelectedItem(item: CyrcleView) {
        print(item.title?.text)
    }
    func isBool() -> Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


