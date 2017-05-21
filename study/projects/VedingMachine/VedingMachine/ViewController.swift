//
//  ViewController.swift
//  VedingMachine
//
//  Created by 샤인 on 2017. 5. 21..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
        
    var robotName:String = ""
    var robotInfo:String = ""
    var robotPrice:Int = 0
    var robotStock:Int = 0
    var deposit:Int = 0
    var numberPurchased:Int = 0
    
    @IBOutlet weak var depositTextField: UITextField!
    @IBOutlet weak var resultTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //1.입금텍스트필드에 돈을 쓰고 입금을 누르면 돈이 입금되어서 결과텍스트에 입금된 금액을 띄워준다
    
    
    
    
    @IBAction func optimusPickAction(_ sender: UIButton) {
        robotName = "옵티머스프라임"
        robotPrice = 100000000
        robotInfo = "대형차로 변신이 가능합니다. (3대 한정모델)"
        robotStock = 3
        numberPurchased = 0
        
        
        self.resultTextField.text = "로봇명: \(robotName)\n 가격: \(robotPrice)\n 로봇정보: \(robotInfo)"
     
        
    }
    @IBAction func ironPickAction(_ sender: UIButton) {
        robotName = "아이언맨"
        robotPrice = 10000000
        robotInfo = "착용이 가능합니다. (7대 한정모델)"
        robotStock = 7
        numberPurchased = 0
        
        self.resultTextField.text = "로봇명: \(robotName)\n 가격: \(robotPrice)\n 로봇정보: \(robotInfo)"
    }
    @IBAction func bumbleAction(_ sender: UIButton) {
        robotName = "범블비"
        robotPrice = 700000000
        robotInfo = "스포츠카로 변신이 가능합니다. (10대 한정모델)"
        robotStock = 10
        numberPurchased = 0
        
        self.resultTextField.text = "로봇명: \(robotName)\n 가격: \(robotPrice)\n 로봇정보: \(robotInfo)"
    }
    @IBAction func baymaxAction(_ sender: UIButton) {
        robotName = "베이맥스"
        robotPrice = 10000000
        robotInfo = "의료용 로봇입니다."
        robotStock = 1000
        numberPurchased = 0
        
        self.resultTextField.text = "로봇명: \(robotName)\n 가격: \(robotPrice)\n 로봇정보: \(robotInfo)"
    }
    
    @IBAction func depositAction(_ sender: UIButton) {
        deposit = Int(self.depositTextField.text!)!
        self.resultTextField.text = "입금액: \(String(describing:self.depositTextField.text!))"
        
    }
    @IBAction func returnMoneyAction(_ sender: UIButton) {
        if deposit == 0 {
            self.resultTextField.text = "반환할 금액이 없네요^^.."
        }else{
            self.resultTextField.text = "\(deposit)원이 반환되었습니다."
            deposit = 0
        }
        self.depositTextField.text = String(deposit)
    }
    @IBAction func decisionAction(_ sender: UIButton) { //디포짓 - price = 반환텍스트, 디포짓 - price, 결과텍스트에""구매완료 감사합니다
        
        if robotStock == 0{
            self.resultTextField.text = "품절되었습니다"
        }else if deposit < robotPrice {
            self.resultTextField.text = "금액이 부족합니다"
        }else{
           robotStock = robotStock - 1
           numberPurchased = numberPurchased + 1
           deposit = deposit - robotPrice
            self.resultTextField.text = "구매완료 \(numberPurchased)대를 구매하였습니다"
        }
        if robotName == "" {
           self.resultTextField.text = "로봇을 선택해주세요"
        }
        self.depositTextField.text = String(deposit)
    }
    @IBAction func cancelAction(_ sender: UIButton) {
        robotName = ""
        robotPrice = 0
        robotInfo = ""
        self.resultTextField.text = ""
    }
    
}

