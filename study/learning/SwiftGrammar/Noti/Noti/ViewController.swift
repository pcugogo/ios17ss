//
//  ViewController.swift
//  Noti
//
//  Created by 샤인 on 2017. 6. 22..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainViewLb: UILabel!
    override func viewDidLoad() { //뷰컨이 옵저버
        super.viewDidLoad()
        //메모리 워닝이뜨면 인스턴스 재생성된다
        NotificationCenter.default.addObserver(self, selector: #selector(callNoti(sender:)), name: Notification.Name("postNoti"), object: nil)
        
        
        
    }

    
    func callNoti(sender:Notification){
    
        mainViewLb.text = sender.object as? String
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        NotificationCenter.default.removeObserver(self) // 지우지말고 값을 바꿔야될때는 지우지말고 바꿔야된다고한다
    }
    
    
}

