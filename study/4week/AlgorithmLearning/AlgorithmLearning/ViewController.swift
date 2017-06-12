//
//  ViewController.swift
//  AlgorithmLearning
//
//  Created by 샤인 on 2017. 6. 13..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(numPlusRepeat(num: 5))
        print(plusNum(num: 3))
        print(plusNum(num: 5))
        print(fac(num: 5))
        print(fibonacci(n: 8))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numPlusRepeat(num:Int) -> Int{
        
        var number:Int = 0
        
        for plus in 1...num{
            
            number = number + plus
        }
        return number
    }
    func numberPlus(num:Int) ->Int{
        
        return (num * (num + 1)) / 2
    }
    
    func plusNum(num:Int) -> Int{
        if num == 1{
            return 1
        }else{
            return num + plusNum(num:num - 1)
        }
    }
    
    func fac(num:Int)-> Int{
        if num == 1 {
            return 1
        }else{
            return  num * fac(num: num - 1) // 4 3 2 1
        }
    }
    
    func fibonacci(n:Int) -> Int {
        
        if n == 0 {
            return 0
        }else if n == 1{
            return 1
        }else{
            return fibonacci(n: n-1) + fibonacci(n:n-2)
        }
    }
}

