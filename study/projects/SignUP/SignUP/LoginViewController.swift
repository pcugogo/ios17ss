//
//  LoginViewController.swift
//  SignUP
//
//  Created by 샤인 on 2017. 5. 30..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    var loginIdText = ""
    let usersID:String = UserDefaults.standard.string(forKey: "NickName")!
    @IBOutlet weak var loginWelcomeLb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let userID = usersID
        loginWelcomeLb.text = "\(userID)님 안녕하세요"
     }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        let isAuthentified: Bool = UserDefaults.standard.bool(forKey: Authentification.authentificationBool)
        super.viewDidAppear(animated)
        if !isAuthentified {
            self.performSegue(withIdentifier: "LoginViewSeg", sender: self)
        }
    }
//    @IBAction func unwindToMain(_ segue:UIStoryboardSegue){
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
