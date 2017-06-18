//
//  ViewController.swift
//  AutoLayout
//
//  Created by 샤인 on 2017. 5. 25..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
   
    @IBOutlet weak var resultView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstTextField.delegate = self
        firstTextField.tag = 1
        secondTextField.text = "안녕"
        secondTextField.tag = 2
        secondTextField.placeholder = "ㅎㅎ"
        secondTextField.delegate = self     //딜리게이트를 누구한테 뿌려줄래? 셀프
        
        thirdTextField.delegate = self
        thirdTextField.tag = 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
        switch textField.tag {
        case 1:
            secondTextField.becomeFirstResponder()
        case 2:
            thirdTextField.becomeFirstResponder()
        case 3:
            thirdTextField.resignFirstResponder()
        default:
             textField.resignFirstResponder()
        }
       
       
        return true
    }
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        print("location:\(range.location)")
//        print("length:\(range.length)")
//        
//        if(textField.text?.characters.count)! > 10 && string != ""{
//            return false
//        }else{
//         return true
//        }
//        
//    }

}

