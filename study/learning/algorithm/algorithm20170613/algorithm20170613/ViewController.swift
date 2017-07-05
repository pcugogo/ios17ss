//
//  ViewController.swift
//  algorithm20170613
//
//  Created by 샤인 on 2017. 6. 13..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func hashadNumber(num:Int)->Bool{
        
        
        var firstNum:Int?
        var secondNum:Int?
        var thirdNum:Int?
        var resultNum:Int?
        
        if 9 < num && num < 100 {
            firstNum = num / 10
            secondNum = num % 10
            
            resultNum = num % (firstNum! + secondNum!)
            if resultNum != 0{
                return false
            }else if resultNum == 0{
                return true
            }
        }else if 99 < num && num < 200{
                firstNum = num / 100 // 100 / 100 = 1
                secondNum = (num % 100) / 10 // (172%100 =72) / 10 = 7
                thirdNum = num % 10 // 172 % 10 = 2
                
                resultNum = num % (firstNum! + secondNum! + thirdNum!) // 1 + 7 + 2
                
                if resultNum != 0{
                    return false
                }else if resultNum == 0{
                    return true
                }
            
        }
        return true
    }
    
    
    
    
    
    
    
    
    
    @IBAction func btnAction(_ sender: UIButton) {
        let inputValue = Int(inputTextField.text!)!
        resultLb.text = String(hashadNumber(num:inputValue))
        
    }
    
}

