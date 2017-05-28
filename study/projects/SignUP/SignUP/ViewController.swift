//
//  ViewController.swift
//  SignUP
//
//  Created by 샤인 on 2017. 5. 28..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpIdTextField: UITextField!
    @IBOutlet weak var signUpPassTextField: UITextField!
    @IBOutlet weak var signUpNickTextField: UITextField!
    @IBOutlet weak var idNoticeLabel: UILabel!
    @IBOutlet weak var passwordNoticeLabel: UILabel!
    @IBOutlet weak var welcomeLogin: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if idTextField.text == "" && passwordTextField.text == ""{
            idTextField.text = ""
            idTextField.becomeFirstResponder()
        }else if passwordTextField.text == "" {
             passwordTextField.text = ""
             passwordTextField.becomeFirstResponder()
        }else{
            switch textField.tag {
            case 1:
                passwordTextField.becomeFirstResponder()
            case 2:
                passwordTextField.resignFirstResponder()
            default:
                textField.resignFirstResponder()
        }
    }

        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        if idTextField.text == "" && passwordTextField.text == "" {
            idNoticeLabel.text = "아이디를 확인해주세요"
            passwordNoticeLabel.text = "비밀번호를 확인해주세요"
        }else if idTextField.text == "" {
            idNoticeLabel.text = "아이디를 확인해주세요"
            passwordNoticeLabel.text = ""
        }else if passwordTextField.text == "" {
            passwordNoticeLabel.text = "비밀번호를 확인해주세요"
            idNoticeLabel.text = ""
        }else{
            idNoticeLabel.text = ""
            passwordNoticeLabel.text = ""
        }
    }
    @IBAction func signUpButtonAction(_ sender: UIButton) {
    }
    
}

