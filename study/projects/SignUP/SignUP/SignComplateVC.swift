//
//  SignComplateViewController.swift
//  SignUP
//
//  Created by 샤인 on 2017. 5. 29..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class SignComplateVC: UIViewController {
    var complateNick = SignUp()
    var nickNameText:String?
    
    @IBOutlet weak var complateLb: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.complateLb.text = "\(nickNameText!)님 환영합니다"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
