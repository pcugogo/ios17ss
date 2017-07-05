//
//  ViewController.swift
//  algorithm20170628
//
//  Created by 샤인 on 2017. 6. 28..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(number(num1: 3, num2: 9))
        print(number2(num3: 3, num4: 9))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func number(num1:Int, num2:Int)->Int{
        var resultNum:Int = 0
        
        for i in 2...num2{
            if num1 % i == 0 && num2 % i == 0{
                resultNum = i
            }
            
        }
        return resultNum
    }
    
    func number2(num3:Int, num4:Int)->Int{
        var resultNum:Int = 0
        let num = num3 * num4
       
            resultNum = num / number(num1: num3, num2: num4)
        return resultNum
        }
    
    }




//2. 최소공배수
/* 두 자연수의 곱 = 최대공약수 * 최소공배수
 따라서, 최소공배수 = 두 자연수의 곱 / 최대공약수 */























