
//
//  LoginViewController.swift
//  MemoApp
//
//  Created by 샤인 on 2017. 6. 10..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var loginIdTextField: UITextField!
    @IBOutlet weak var loginPasswordTF: UITextField!
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
            loginPasswordTF.becomeFirstResponder()
        case 2:
            loginPasswordTF.resignFirstResponder()
        default:
            textField.resignFirstResponder()
        }
        return true
    }
    @IBAction func loginBtn(_ sender: UIButton) {
        logInRequest()
    }

    func logInRequest() {
        if !(loginIdTextField.text?.isEmpty)! && !(loginPasswordTF.text?.isEmpty)!{
            if loginIdTextField.text! == UserDefaults.standard.string(forKey: "Email") && loginPasswordTF.text! == UserDefaults.standard.string(forKey: "Password"){
                let byMemoTableView:MemoTableViewController = self.storyboard?.instantiateViewController(withIdentifier: "MemoTableViewController") as! MemoTableViewController
                self.present(byMemoTableView, animated: true, completion: nil)
            }else{
                let logInAlert:UIAlertController = UIAlertController(title: "로그인 오류", message: "아이디와 비밀번호를 확인해주세요", preferredStyle: .alert)
                let logInBtnAlert:UIAlertAction = UIAlertAction(title: "예", style: .cancel, handler: nil)
                logInAlert.addAction(logInBtnAlert)
                self.present(logInAlert, animated: true, completion: nil)
                
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
