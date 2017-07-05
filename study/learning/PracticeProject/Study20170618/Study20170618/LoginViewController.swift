//
//  LoginViewController.swift
//  study20170616
//
//  Created by 샤인 on 2017. 6. 16..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

var userData:[[String:String]] = []

class LoginViewController: UIViewController {
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var loginPWTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        userLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func userLoad(){     //실행하면 모든뷰 동시에 읽히기때문에 사인업에서 닐처리를 해도 유저디폴트부터 읽기때문에 가드문을 쓰지않으면 닐이므로 뻑난다
        guard let userList = UserDefaults.standard.array(forKey: "UserList") else {
            return print("데이터 로딩실패")
        }
        
        userData = userList as! [[String : String]]
    }

    func identifyUser() -> Bool {
        var userIdentification: Bool = false
        
        for user in userData {
            if user["Email"] == loginTextField.text && user["Password"] == loginPWTextField.text {
                userIdentification = true
            }
        }
        return userIdentification
    }
    
    
    
    
    @IBAction func loginBtn(_ sender: UIButton) {
        let userIdentification: Bool = identifyUser()
        if userIdentification == true {
            UserDefaults.standard.set(true, forKey: "Authentification")
            self.dismiss(animated: true, completion: nil)
             print("로그인 성공")
            
        }else{
            let loginAlert = UIAlertController(title: "오류", message: "아이디와 비밀번호를 확인해주세요", preferredStyle: .alert)
            
            let loginBtn = UIAlertAction(title: "확인", style: .cancel, handler: nil)
            loginAlert.addAction(loginBtn)
            
            self.present(loginAlert, animated: true, completion: nil)
             print("로그인 실패")
        }
        
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
