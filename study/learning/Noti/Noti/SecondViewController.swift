//
//  SecondViewController.swift
//  Noti
//
//  Created by 샤인 on 2017. 6. 22..
//  Copyright © 2017년 IosCamp. All rights reserved.
//
import UIKit


class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changed(_ sender: UISwitch) {
        if sender.isOn {
            NotificationCenter.default.post(name:Notification.Name("postNoti"), object: "On")
        }else{
             NotificationCenter.default.post(name:Notification.Name("postNoti"), object: "Off")
        }
     }
    
//        class Notification{ //이런 상황이다 그래서 노티피케이션이랑 NSNotification.Name이랑 같은거같다
//            typealias Name = NSNotification.Name
//        }
}
