//
//  ViewController.swift
//  SignUP
//
//  Created by 샤인 on 2017. 5. 28..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {
    
    
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var idNoticeLabel: UILabel!
    @IBOutlet weak var passwordNoticeLabel: UILabel!
    
    
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
        loginRequest()
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
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        var loginCheck = true
        if identifier == "loginSeg"{
            if idTextField.text == "" || passwordTextField.text == "" {
                loginCheck = false
            }else{
                loginCheck = true
            }
        }
        return loginCheck
    }
    
    @IBAction func back(unwindSegue:UIStoryboardSegue){ //지금은 안쓰고 있고 그냥 세그 show로 연결해줬다
        //back(함수명)이나 unwindSegue(파라미터)명은 상관없다 타입에 UIStoryboardSegue만 잘해주면 된다
        //돌아갈뷰에 액션을 걸어준다 메인스토리보드에서 돌아가기전 뷰에서 돌아가는 버튼을 끌고 상단의 exit에 연결해주면 된다
    }
   
    func loginRequest() {
        if !(self.idTextField.text?.isEmpty)!
            && !(self.passwordTextField.text?.isEmpty)!{
            if self.idTextField.text! == UserDefaults.standard.string(forKey: Authentification.email) && self.passwordTextField.text! == UserDefaults.standard.string(forKey: Authentification.password){
                print("로그인 성공")
                UserDefaults.standard.set(true, forKey: Authentification.authentificationBool)
            }else{
                print("실패")
            }
        }
    }
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        let loginId:LoginViewController = segue.destination as! LoginViewController
    //        loginId.loginIdText = idTextField.text!
    //    }
    
}

