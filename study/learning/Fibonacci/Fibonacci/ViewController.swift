//
//  ViewController.swift
//  Fibonacci
//
//  Created by 샤인 on 2017. 5. 24..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    
    func fibonacci(n:Int) -> Int {
        var index:[Int] = [-1]
        if n == 0 {
            return 0
        }else if n == 1{
            return 1
        }else{
            return fibonacci(n: n-1) + fibonacci(n:n-2)
            }
        
        
    }

    func fibonacci1(to inputNumber: Int) -> [Int] {
        let lastIndex = inputNumber - 1
        if lastIndex == 1 {
            return[1,1]
        }else{
            var resultArray = fibonacci1(to: lastIndex)
            let result: Int = resultArray[lastIndex - 1] + resultArray[lastIndex - 2]
            resultArray.append(result)
            return resultArray
        }
    }
    //탑게임 2의 n세제곱 -1 이동경로
    
    //    func collatzConjecture()-> Int {  재귀함수 다시 돌아가는 함수
    //     if n == 1
    //     {
    //        return 0
    //     }else{
    //        if n%2 == 0 {
    //            return 1 + collatzConjecture(n: n/2)
    //        }else{
    //            return 1 + collatzConjecture(n: (n*3)+1)
    //        }
    //        }
    //    }

    
}

