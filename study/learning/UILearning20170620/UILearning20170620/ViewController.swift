//
//  ViewController.swift
//  UILearning20170620
//
//  Created by 샤인 on 2017. 6. 20..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    
    var dateFormatter:DateFormatter = DateFormatter()  //날짜를 원하는데로 표시하고 싶을때 포멧
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dataLb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateFormat = "yyyy년 M월 d일 a h시 mm분" //"yyyy. m. d. a hh:mm"
        dateFormatter.locale = Locale.current
        dateFormatter.locale = Locale(identifier:"kor_KR")
        datePicker.locale = Locale(identifier:"kor_KR")
        self.datePicker.date = Date()
        dataLb.text = dateFormatter.string(from: self.datePicker.date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func datePcikerChangedAction(_ sender: UIDatePicker) {
        
        
        
             self.dataLb.text = dateFormatter.string(from: sender.date)
    }

}

