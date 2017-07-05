//
//  ViewController.swift
//  Carthage
//
//  Created by 샤인 on 2017. 6. 28..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit
import Then

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let label: UILabel = UILabel().then{
//            $0.frame =
//                $0.backgroundColor
//            $0.text =
//        }
//
        let label = UILabel().then { t in
            t.backgroundColor = .white
            t.frame = CGRect(x: 1, y: 1, width: 1, height: 1)
        }
        
        let label2:UILabel = {
            let label2 = UILabel()
            label2.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
            label2.backgroundColor = .white
            return label2
        }()
//        let label =
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

