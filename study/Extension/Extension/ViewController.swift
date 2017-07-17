//
//  ViewController.swift
//  Extension
//
//  Created by 샤인 on 2017. 7. 11..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        3.repetitions {
            print("Hi")
        
          
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   

}

extension Int{
    func repetitions(task: () -> Void){
        for _ in 0..<self {
            task()
        }
    }
}


