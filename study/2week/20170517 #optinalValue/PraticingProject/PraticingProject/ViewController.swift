//
//  ViewController.swift
//  PraticingProject
//
//  Created by 샤인 on 2017. 5. 17..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var inputTextFleid: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func runButtonTouchd(_ sender: UIButton) {
        

          let num:Int = Int(self.inputTextFleid.text!)!
          self.measureValue(number: num)
    }
    
//    func isEven(number num:Int){
//        
//        if num % 2 == 0{
//            self.resultLabel.text = "짝수입니다"
//        }else{
//            self.resultLabel.text = "홀수입니다"
//        }
//    }
    
    func measureValue(number num:Int){
        if num <= 2 {
            self.resultLabel.text = "잘못입력하셨습니다"
        }else{
            
            var result: Int = 0
            
            for i in 2..<num {
                if num % i == 0{
                    result += i
                }
            }
            self.resultLabel.text = "결과는 \(result)"
        }
       
    }

    
    
}

