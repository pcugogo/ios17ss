
//
//  detailViewController.swift
//  SignUP
//
//  Created by 샤인 on 2017. 5. 29..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UITextFieldDelegate {
    var member = SignUp()
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var signIdTextField: UITextField!
    @IBOutlet weak var signPassTextField: UITextField!
    @IBOutlet weak var passConfirmTextField: UITextField!
    
    @IBOutlet weak var signNickTextField: UITextField!
    @IBOutlet weak var signUpLb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        signIdTextField.delegate = self
        signPassTextField.delegate = self
        signNickTextField.delegate = self
        passConfirmTextField.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Dalagate
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.scrollView.setContentOffset(CGPoint(x: 0.0, y:150.0), animated: true)
//        signUpLb.isHidden = true    //이 타이밍에 글씨 가리는 효과를 줄 수 있다
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.scrollView.setContentOffset(CGPoint(x: 0.0, y: 0.0), animated: true)
        // 회원가입 글씨 뜨게해야된다
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField.tag { //텍스트들에 태그 걸어놨음
        case 1...300:  //텍스트필드의 태그가 100씩 증가하게 설정하였음. 따라서 이케이스로 firstResponder를 자동으로 넘길 수 있음. 아이디 텍스트태그가 100부터시작하기때문에 100부터 시작해도됨
            self.view.viewWithTag(textField.tag + 100)?.becomeFirstResponder()
        default:
            textField.resignFirstResponder()
            signUpRequst()
        }
        return true
    }
    
    @IBAction func signUpButtonToched(_ sender: UIButton) {
        self.view.endEditing(true)
        signUpRequst()
    }
    
    @IBAction func dafdsfasdf(_ sender: UIButton) {
         self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonToched(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        var signUpCheck = true
        if identifier == "SignUpSeg"{
            if signIdTextField.text == "" || signPassTextField.text == "" || signNickTextField.text == ""{
                signUpCheck = false
            }else{
                signUpCheck = true
            }
        }
        return signUpCheck
    }
    
    func signUpRequst(){
        if !(signIdTextField.text?.isEmpty)! && !(signPassTextField.text?.isEmpty)! && !(signNickTextField.text?.isEmpty)! && signPassTextField.text! == passConfirmTextField.text!{
            UserDefaults.standard.set(signIdTextField.text!, forKey: Authentification.email)
            UserDefaults.standard.set(signPassTextField.text!, forKey: Authentification.password)
            UserDefaults.standard.set(signNickTextField.text!, forKey: Authentification.nickName)
//            self.dismiss(animated: true, completion: nil)
        
        }else{
            self.signUpLb.text = "모든 항목 입력 부탁드립니다^^"
        }
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let signUpNick:SignComplateVC = segue.destination as! SignComplateVC
//        signUpNick.nickNameText = signNickTextField.text!
//    }
    //여기서 닉네임 값을 뒤에 nickNameText에 담아주면 된다
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
