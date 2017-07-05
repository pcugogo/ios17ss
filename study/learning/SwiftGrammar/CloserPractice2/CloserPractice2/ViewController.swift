//
//  ViewController.swift
//  CloserPractice2
//
//  Created by 샤인 on 2017. 6. 23..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let alphabet = ["a","b","c"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var currentValue = 3
        let moveNearerToZero = chooseStepFunction(backWard: currentValue > 0)
        
        while currentValue != 0 {
            print("\(currentValue)")
            currentValue = moveNearerToZero(currentValue)
        }
        
        
        func backWard(s1:String,s2:String) -> Bool{
            return s1 > s2
        }
        
        let sorted = alphabet.sorted(by:backWard)
        
        let sorted2 = alphabet.sorted(by:{(s1:String,s2:String)->Bool in
            return s1 > s2
        })
        let sorted3 = alphabet.sorted(by:{s1,s2 in return s1 > s2
        })
        let sorted4 = alphabet.sorted(by:{s1,s2 in s1 > s2})
        
        let sorted5 = alphabet.sorted(by:{$0 > $1})
        
        print(sorted)
        print(sorted2)
        print(sorted3)
        print(sorted4)
        print(sorted5)
    
}

    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }


    func chooseStepFunction(backWard:Bool) -> (Int) -> Int{
        func stepForward(input:Int) -> Int {return input + 1}
        func stepBackward(input:Int) -> Int {return input - 1}
        
        return backWard ? stepBackward : stepForward
    }



}






//chooseStepFunction stepForword stepBackward backward moveNearerToZero

















//
//func backWard(_ s1:String, _ s2: String) -> Bool{
//    return s1 < s2
//}
//let sorted = alphabet.sorted(by: backWard)
//
//let sorted2 = alphabet.sorted(by: {(s1: String, s2:String)-> Bool in
//    return s1 > s2})
//
//let sorted3 = alphabet.sorted(by:{s1, s2 in return s1 > s2})
//
//let sorted4 = alphabet.sorted(by:{s1, s2 in s1 > s2})
//
//let sorted5 = alphabet.sorted(by: {$0 > $1})
//print(sorted)
//print(sorted2)
//print(sorted3)
//print(sorted4)
//print(sorted5)
