//
//  detailViewController.swift
//  SignUP
//
//  Created by 샤인 on 2017. 5. 29..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var member = SignUp()
    
    @IBOutlet weak var signIdTextField: UITextField!
    @IBOutlet weak var signPassTextField: UITextField!
    @IBOutlet weak var signNickTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func signComplateBtn(_ sender: UIButton) {
        let memberList = UsersInformation()
        
        memberList.id += signIdTextField.text!
        memberList.password += signPassTextField.text!
        memberList.nickName += signNickTextField.text!
        
        member.addUser(memberList)
    
      
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if signIdTextField.text == "" || signPassTextField.text == "" || signNickTextField.text == ""{
         return false
        }else{
            return true
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let signUpNick:SignComplateVC = segue.destination as! SignComplateVC
        signUpNick.nickNameText = signNickTextField.text!
    }
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
