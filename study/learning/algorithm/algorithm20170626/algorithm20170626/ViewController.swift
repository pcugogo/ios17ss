//
//  ViewController.swift
//  algorithm20170626
//
//  Created by 샤인 on 2017. 6. 26..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
       var starLine = 5
       var starStr = "*"
        
        let star = starP(backWard: starLine > 0)
        
//        let sorted2 = alphabet.sorted(by:{(s1:String,s2:String)->Bool in
//            return s1 > s2
//        })

        while starLine != 0 {
            print("\(starStr)")
            starLine = star(starLine)
            starStr = starStr + "*"
            
        }
        
       let starPrint:(Int) -> Void = {(lineNumb: Int) in
            for i in 1...lineNumb{
                var str:String = ""
                for _ in 1...i{
                    str += "*"
                    
                }
                print(str)
            }
        }
        
        starPrint(3)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func starP(backWard:Bool) -> (Int) -> Int{
        func stepForward(input:Int) -> Int {return input + 1}
        func stepBackward(input:Int) -> Int {return input - 1}
        
        return backWard ? stepBackward : stepForward
    }


}

