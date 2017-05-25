//
//  ViewController.swift
//  CollatzConjecture
//
//  Created by 샤인 on 2017. 5. 24..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number:Int = 0
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

    func collatzConjecture(InputNum num:Int) -> Int{
        var num:Int = number
        var count:Int = 0
        
        while number != 1{   //1이 되지않았다면 계속 반복해라
            if number % 2 == 0{
                number /= 2
            }else{
                number = number * 3 + 1
            }
            count = count + 1
        }
        return count
    }
    @IBAction func resultAction(_ sender: UIButton) {
        number = Int(self.inputTextField.text!)!
        self.resultLb.text = String(collatzConjecture(InputNum: number))
    }

    

    
}

