//
//  LoginViewController.swift
//  CellViewPractice
//
//  Created by 샤인 on 2017. 6. 4..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var idTextField: UITextField!

    @IBOutlet weak var passWordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField.tag {
        case 1:
            passWordTextField.becomeFirstResponder()
        case 2:
            passWordTextField.resignFirstResponder()
        default:
            textField.resignFirstResponder()
        }
        return true
    }
    @IBAction func loginBtnAction(_ sender: UIButton) {
        logInRequest()
    }
    @IBAction func signUpBtnAction(_ sender: UIButton) {
     
    }
   
    func logInRequest() {
        if !(idTextField.text?.isEmpty)! && !(passWordTextField.text?.isEmpty)! { //텍스트가 닐일수도 있어서 옵셔널
            if idTextField.text! == UserDefaults.standard.string(forKey: Authentification.email) && passWordTextField.text! == UserDefaults.standard.string(forKey: Authentification.password){
                UserDefaults.standard.string(forKey: Authentification.authentificationBool)
                self.navigationController?.dismiss(animated: true, completion: nil)
            }else{
                let loginAlert:UIAlertController = UIAlertController(title: "로그인 오류", message: "아이디와 비밀번호를 확인해주세요", preferredStyle: .alert)
                let loginBtn:UIAlertAction = UIAlertAction(title: "예", style: .cancel, handler: nil)
                loginAlert.addAction(loginBtn)
                self.present(loginAlert, animated: true, completion:nil)
            }
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
