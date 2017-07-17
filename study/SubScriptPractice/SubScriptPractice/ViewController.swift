//
//  ViewController.swift
//  SubScriptPractice
//
//  Created by 샤인 on 2017. 7. 11..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var matrix = Matrix(rows: 2, columns: 2)
        matrix[0,0] = 1
        matrix[0,1] = 2.5
        print(matrix.grid)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
}

