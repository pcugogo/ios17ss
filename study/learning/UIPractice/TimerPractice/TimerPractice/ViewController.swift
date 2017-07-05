//
//  ViewController.swift
//  TimerPractice
//
//  Created by 샤인 on 2017. 6. 26..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer:Timer?
    var changedValue:Int?
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var timerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

    }

    //데이터피커 모드에 모드들이 있음
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func startTimer(forMin minute:Int) {
        
        let seconds:Int = minute * changedValue!
        var index: Int = 0
        
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer:Timer) in
            
            self.timerLabel.text = String(index)
            index += 1
            if index > seconds {  //피커뷰에서 정한 초만큼 까지
                timer.invalidate()
            }
        })

    }

    @IBAction func timerStartBtn(_ sender: UIButton) {
        self.timer?.fire()
        self.startTimer(forMin: 1)
   
    }
   
    @IBAction func datePickerAction(_ sender: UIDatePicker) {
//       timerLabel.text = String(sender.countDownDuration)
        changedValue = Int(datePicker.countDownDuration)
    }
}

