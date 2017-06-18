//
//  SignUpViewController.swift
//  study20170616
//
//  Created by 샤인 on 2017. 6. 16..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    

    
    @IBOutlet weak var signUpEmailTF: UITextField!

    @IBOutlet weak var signUpPWTF: UITextField!
    @IBOutlet weak var signUpConfirmTF: UITextField!
    @IBOutlet weak var signUpNickNTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func userInfoList(){
        let userInfo:[String:String] = ["Email":signUpEmailTF.text!, "Password":signUpPWTF.text!,"NickName":signUpNickNTF.text!]
        var userList:[Any] = UserDefaults.standard.array(forKey: "UserList") ?? []
        userList.append(userInfo)
        
        UserDefaults.standard.set(userList, forKey: "UserList")
    }
    
    
    
    func signUpRequest(){
        if !(signUpEmailTF.text?.isEmpty)! && !(signUpPWTF.text?.isEmpty)! && !(signUpNickNTF.text?.isEmpty)! && signUpPWTF.text == signUpConfirmTF.text{
            userInfoList()
            UserDefaults.standard.set(true, forKey: "Authentification")

        }else if (signUpEmailTF.text?.isEmpty)! || (signUpPWTF.text?.isEmpty)! || (signUpNickNTF.text?.isEmpty)! || (signUpConfirmTF.text?.isEmpty)! {
            let signUpAlert:UIAlertController = UIAlertController(title: "가입 오류", message: "모든 항목을 입력해주세요", preferredStyle: .alert)
            let signUpBtnAlert:UIAlertAction = UIAlertAction(title: "예", style: .cancel, handler: nil)
            signUpAlert.addAction(signUpBtnAlert)
            self.present(signUpAlert, animated: true, completion: nil)
        }else if signUpPWTF.text != signUpConfirmTF.text{
            let signUpAlert = UIAlertController(title: "오류", message: "비밀번호를 확인해주세요", preferredStyle: .alert)
            let signUpAlertBtn = UIAlertAction(title: "예", style: .cancel, handler: nil)
            signUpAlert.addAction(signUpAlertBtn)
            self.present(signUpAlert, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func signUpBtn(_ sender: UIButton) {
        signUpRequest()
        dismiss(animated: true, completion: nil)
    }
    @IBAction func backBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
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
