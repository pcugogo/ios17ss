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
        
        if idTextField.text == "" && passwordTextField.text == ""{ //둘다비었을때 아이디로
            idTextField.text = ""
            idTextField.becomeFirstResponder()
        }else if passwordTextField.text == "" {                 //패스워드 비어 있으면 패스워드로
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
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { //터치시작시 자판내리기
        self.view.endEditing(true)
    }
    
    @IBAction func loginButton(_ sender: UIButton) {         //비어있는 곳에 텍스트띄워준다
        loginRequest()
        

        
        
        
//        if idTextField.text == "" && passwordTextField.text == "" {
//            idNoticeLabel.text = "아이디를 확인해주세요"
//            passwordNoticeLabel.text = "비밀번호를 확인해주세요"
//        }else if idTextField.text == "" {
//            idNoticeLabel.text = "아이디를 확인해주세요"
//            passwordNoticeLabel.text = ""
//        }else if passwordTextField.text == "" {
//            passwordNoticeLabel.text = "비밀번호를 확인해주세요"
//            idNoticeLabel.text = ""
//        }else{
//            idNoticeLabel.text = ""
//            passwordNoticeLabel.text = ""
//
//        }
    }
    
    @IBAction func signUpActionBtn(_ sender: UIButton) {
//        loginRequest()
//        let bySignUp:SignUpViewController = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
//        self.present(bySignUp, animated: true, completion: nil)
    }
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        var loginCheck = true
//        if identifier == "loginSeg"{   //로직세그가 들어왔을때 텍스트비어있으면 안넘어감
//            if idTextField.text == "" || passwordTextField.text == "" {
//                loginCheck = false
//            }else{
//                loginCheck = true
//            }
//        }
//        return loginCheck
//    }
    
    @IBAction func back(unwindSegue:UIStoryboardSegue){ //지금은 안쓰고 있고 그냥 세그 show로 연결해줬다
        //back(함수명)이나 unwindSegue(파라미터)명은 상관없다 타입에 UIStoryboardSegue만 잘해주면 된다
        //돌아갈뷰에 액션을 걸어준다 메인스토리보드에서 돌아가기전 뷰에서 돌아가는 버튼을 끌고 상단의 exit에 연결해주면 된다
    }
   
    func loginRequest() {
        if !(self.idTextField.text?.isEmpty)!
            && !(self.passwordTextField.text?.isEmpty)!{
            //            let userList:[[String:Any]] = UserDefaults.standard.array(forKey: "UserList") as ! [[String:Any]]
            //
            //user = [String:Any]
            //            for user in userList
            //            {
            //                let userEmail = user[Authentification.email]!
            //                  if idTextField.text! == userEmail{
            //                  let pw:Stirng = user[Authentification.password]!
            //                  if self.passwordTextField.text! == pw{
            //           UserDefaults.standard.set(true, forKey: Authentification.auth) //자동 로그인용
            //            self.dismiss(animated: true, completion: nil)
            //        }
            //        }
            
            //            }
            if self.idTextField.text! == UserDefaults.standard.string(forKey: Authentification.email) && self.passwordTextField.text! == UserDefaults.standard.string(forKey: Authentification.password){
                print("로그인 성공")
                UserDefaults.standard.set(true, forKey: Authentification.authentificationBool)
                self.navigationController?.dismiss(animated: true, completion: nil) //로그인 성공시 메인으로
//                let byMain:MainViewController = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
//                self.present(byMain, animated: true, completion: nil)
            }else{
                let alert:UIAlertController = UIAlertController(title: "이것이알럿", message: "로그인실패", preferredStyle: .alert)
                let okBt:UIAlertAction = UIAlertAction(title: "알았슈", style:UIAlertActionStyle.cancel, handler: nil) 
                    alert.addAction(okBt)
                self.present(alert, animated: true, completion:nil)
                print("실패")
            }
        }
    }
//    let user:[String:Any] = [:]
//    user.updateValue(idTextField.text!, forkey: Authentication.email)
//    user.updateValue(passTextField.text!, forkey: Authentication.password)
//    user.updateValue(idTextField.text!, forkey: Authentication.email) 여기는 닉네임?
//    var userList:[Any] = UserDefaults.standard.array(forKey: "userList")
//    userList.append(user)
//    userDefaults.standard.set(userList, forkey: "userList")
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        let loginId:LoginViewController = segue.destination as! LoginViewController
    //        loginId.loginIdText = idTextField.text!
    //    }
    
}

