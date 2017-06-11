//
//  SignUpViewController.swift
//  MemoApp
//
//  Created by 샤인 on 2017. 6. 10..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController,UITextFieldDelegate {
    
    //클래스끼리 데이터를 주고받으려 클래스 변수를 양쪽에 줬더니 뻑난다
    
    @IBOutlet weak var signUpEmailTF: UITextField!
    @IBOutlet weak var signUpPassWordTF: UITextField!
    @IBOutlet weak var signUpPWConfirmTF: UITextField!
    @IBOutlet weak var signUpNickNameTF: UITextField!
    
    
    ////////////////////////////////////////////////////////
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    ////////////////////////////////////////////////////////
    
    
    
    
    ////////////////////////////////////////////////////////
    @IBAction func signUpBtn(_ sender: UIButton) {
        signUpRequest()
        
        
    }
    @IBAction func backBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func signUpRequest(){
       
        if !(signUpEmailTF.text?.isEmpty)! && !(signUpPassWordTF.text?.isEmpty)! && !(signUpNickNameTF.text?.isEmpty)! && signUpPassWordTF.text! == signUpPWConfirmTF.text! {
            UserDefaults.standard.set(signUpEmailTF.text!, forKey: "Email")
            UserDefaults.standard.set(signUpPassWordTF.text!, forKey: "Password")
            UserDefaults.standard.set(signUpNickNameTF.text!, forKey: "NickName")
            completeAlert()
     
        }else if signUpPassWordTF.text! != signUpPWConfirmTF.text! {
            let signUpAlert:UIAlertController = UIAlertController(title: "비밀번호 입력 오류", message: "비밀번호를 확인해주세요", preferredStyle: .alert)
            let signUpBtnAlert:UIAlertAction = UIAlertAction(title: "예", style: .cancel, handler: nil)
            signUpAlert.addAction(signUpBtnAlert)
            self.present(signUpAlert, animated: true, completion: nil)
        }else{
            let signUpAlert:UIAlertController = UIAlertController(title: "가입 오류", message: "모든 항목을 입력해주세요", preferredStyle: .alert)
            let signUpBtnAlert:UIAlertAction = UIAlertAction(title: "예", style: .cancel, handler: nil)
            signUpAlert.addAction(signUpBtnAlert)
            self.present(signUpAlert, animated: true, completion: nil)
        }
        
    }
    
    func completeAlert(){
        let completeController = UIAlertController.init(title: "가입 완료", message: "환영합니다  \(String(describing: signUpNickNameTF.text!))님 바로 로그인하시겠습니까?", preferredStyle: .alert)
        
        let signInNow = UIAlertAction.init(title: "네", style: .default) { (UIAlertAction) in
            let byMemoTableView:MemoTableViewController = self.storyboard?.instantiateViewController(withIdentifier: "MemoTableViewController") as! MemoTableViewController
            self.present(byMemoTableView, animated: true, completion: nil)
        }
        
        let signInLater = UIAlertAction(title: "아니오", style: .default) { (UIAlertAction) in
            self.navigationController?.popViewController(animated: true)
            
        }
        
        completeController.addAction(signInNow)
        completeController.addAction(signInLater)
        
        
        self.present(completeController, animated: true, completion: nil)
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
