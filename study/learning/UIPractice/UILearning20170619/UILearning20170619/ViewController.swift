//
//  ViewController.swift
//  UILearning20170619
//
//  Created by 샤인 on 2017. 6. 19..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {   //글로벌틴트와 버튼에 디폴트와 셀렉티드를 배웠고 커스텀할 수 있는것도 배웠다 스토리보드에서 설정할 수 있다
    
    @IBOutlet weak var sliderOut: UISlider!
    @IBOutlet weak var sliderValue: UILabel!
    
    @IBOutlet weak var switchOut: UISwitch!
    @IBOutlet weak var switchText: UILabel!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //UIControlState 버튼 기능 다 있음
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switchAction(_ sender: UISwitch) {
        switchText.text = String(sender.isOn)
        //        switchText.text = "\(switchOut.isOn)"
        
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        self.sliderValue.text = String(sender.value)
//        sliderValue.text = "\(sliderOut.value)"
    }
   
    var checkNum = 1
    
    @IBAction func activityIndicatorAction(_ sender: UIButton) {
        if !sender.isSelected{
            activityIndicator.startAnimating()
            sender.isSelected = true            //한번누르면
        }else{
            activityIndicator.stopAnimating()  //두번누르면
            sender.isSelected = false
        }
        
    }

}

