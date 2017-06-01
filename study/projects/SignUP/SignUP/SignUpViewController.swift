
//
//  detailViewController.swift
//  SignUP
//
//  Created by 샤인 on 2017. 5. 29..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController,UITextFieldDelegate {
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
    
   
    
    @IBAction func cancelButtonToched(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true) //쇼 뒤로가는 코드
//        self.dismiss(animated: true, completion: nil)
    }
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        var signUpCheck = true
//        if identifier == "SignUpSeg"{
//            if signIdTextField.text == "" || signPassTextField.text == "" || signNickTextField.text == ""{                        //비밀번호 같은거 확인해야된다
//                signUpCheck = false
//            }else{
//                signUpCheck = true
//            }
//        }
//        return signUpCheck
//    }
    
    func signUpRequst(){
        if !(signIdTextField.text?.isEmpty)! && !(signPassTextField.text?.isEmpty)! && !(signNickTextField.text?.isEmpty)! && signPassTextField.text! == passConfirmTextField.text!{
            UserDefaults.standard.set(signIdTextField.text!, forKey: Authentification.email)
            UserDefaults.standard.set(signPassTextField.text!, forKey: Authentification.password)
            UserDefaults.standard.set(signNickTextField.text!, forKey: Authentification.nickName)
//            self.dismiss(animated: true, completion: nil)
//            let byMain:MainViewController = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
//            self.present(byMain, animated: true, completion: nil)
            self.navigationController?.dismiss(animated: true, completion: nil) // 회원가입에서 로그인갈때
                                                                //네비게이션에서 다른 뷰로 가는 것이기때문에
        }else if signPassTextField.text! != passConfirmTextField.text!{ //디스미스로 해줘야된다
            let passwordAlert:UIAlertController = UIAlertController(title: "가입오류", message: "입력하신 비밀번호와 비밀번호확인 번호가 맞지않습니다", preferredStyle: .alert)
            let passwordError:UIAlertAction = UIAlertAction(title: "네", style:UIAlertActionStyle.cancel, handler: nil)
            passwordAlert.addAction(passwordError)
            self.present(passwordAlert, animated: true, completion:nil)
        
        }else{
            let signUpAlert:UIAlertController = UIAlertController(title: "가입 오류", message: "모든 항목 입력부탁드립니다^^", preferredStyle: .alert)
            let okBt:UIAlertAction = UIAlertAction(title: "네", style:UIAlertActionStyle.cancel, handler: nil) //켄슬에 디폴트 넣고 예 아니오를 선택할 수 있다 아니오 누르면 백 이런거?
            signUpAlert.addAction(okBt)
            self.present(signUpAlert, animated: true, completion:nil)
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
