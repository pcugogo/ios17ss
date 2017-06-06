//
//  SignUpViewController.swift
//  CellViewPractice
//
//  Created by 샤인 on 2017. 6. 4..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController,UITextFieldDelegate {
//    var toPoketMonTable = PoketMonTableViewController()
   
    @IBOutlet weak var signUpEmailTextField: UITextField!
    @IBOutlet weak var signUpPasswordTextField: UITextField!
    @IBOutlet weak var signUpConfirmTextField: UITextField!
    @IBOutlet weak var signUpNickTextField: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { //이거 왜 안되는지?
        self.view.endEditing(true)
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.scrollView.setContentOffset(CGPoint(x: 0.0, y:150.0), animated: true)
        //        signUpLb.isHidden = true    //이 타이밍에 글씨 가리는 효과를 줄 수 있다
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.scrollView.setContentOffset(CGPoint(x: 0.0, y: 0.0), animated: true)
        // 회원가입 글씨 뜨게해야된다
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //델리게이트 꼭 확인
        switch textField.tag {
        case 1:
            signUpPasswordTextField.becomeFirstResponder()
        case 2:
            signUpConfirmTextField.becomeFirstResponder()
        case 3:
            signUpNickTextField.becomeFirstResponder()
        default:
            textField.resignFirstResponder()
            signUpRequest()
        }
        return true
    }
    @IBAction func signUpBtnAction(_ sender: UIButton) {
//        toPoketMonTable.loginId = signUpEmailTextField.text
        signUpRequest()
        
        
    }
    @IBAction func backBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func signUpRequest() {
        if !(signUpEmailTextField.text?.isEmpty)! && !(signUpNickTextField.text?.isEmpty)! && !(signUpPasswordTextField.text?.isEmpty)! == !(signUpConfirmTextField.text?.isEmpty)!{
            UserDefaults.standard.set(signUpEmailTextField.text!, forKey: Authentification.email)
            UserDefaults.standard.set(signUpPasswordTextField.text!, forKey: Authentification.password)
            UserDefaults.standard.set(signUpNickTextField.text!, forKey: Authentification.nickName)
            self.navigationController?.dismiss(animated: true, completion: nil)
        }else{
            let signUpAlert = UIAlertController(title: "가입 오류", message: "입력하신 정보 확인부탁드립니다", preferredStyle: .alert)
            let signUpBtn = UIAlertAction(title: "예", style: .cancel, handler: nil)
            signUpAlert.addAction(signUpBtn)
            self.present(signUpAlert, animated: true, completion: nil)
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
