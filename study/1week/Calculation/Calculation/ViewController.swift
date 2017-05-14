//
//  ViewController.swift
//  Calculation
//
//  Created by 샤인 on 2017. 5. 10..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dispalyLabel: UILabel!
    
    
    @IBAction func clickBtn1(_ sender: UIButton) {
        let displayingText: String = self.dispalyLabel.text!  //느낌표는 머지? self는 머지? 뷰컨트롤옆 m은 머지?
        self.dispalyLabel.text = displayingText + "1"
        print("1버튼이 클릭되었음")
    }//센더 보내는것 타입 유아이버튼
    @IBAction func clickBtn2(_ sender:
        UIButton){
        let displayingText: String = self.dispalyLabel.text!
        self.dispalyLabel.text = displayingText + "2"
        print("2버튼이 클릭되었음")
    }
    @IBAction func clickBtn3(_ sender:
        UIButton){
        let displayingText: String = self.dispalyLabel.text!
        self.dispalyLabel.text = displayingText + "3"
        print("3버튼이 클릭되었음")
    }
    @IBAction func clickBtn4(_ sender:
        UIButton){
        let displayingText: String = self.dispalyLabel.text!
        self.dispalyLabel.text = displayingText + "4"
        print("4버튼이 클릭되었음")
    }
    @IBAction func clickBtn5(_ sender:
        UIButton){
        let displayingText: String = self.dispalyLabel.text!
        self.dispalyLabel.text = displayingText + "5"
        print("5버튼이 클릭되었음")
    }
    @IBAction func clickBtn6(_ sender:
        UIButton){
        let displayingText: String = self.dispalyLabel.text!
        self.dispalyLabel.text = displayingText + "6"
        print("6버튼이 클릭되었음")
    }
    @IBAction func clickBtn7(_ sender:
        UIButton){
        let displayingText: String = self.dispalyLabel.text!
        self.dispalyLabel.text = displayingText + "7"
        print("7버튼이 클릭되었음")
    }
    @IBAction func clickBtn8(_ sender:
        UIButton){
        let displayingText: String = self.dispalyLabel.text!
        self.dispalyLabel.text = displayingText + "8"
        print("8버튼이 클릭되었음")
    }
    @IBAction func clickBtn9(_ sender:
        UIButton){
        let displayingText: String = self.dispalyLabel.text!
        self.dispalyLabel.text = displayingText + "9"
        print("9버튼이 클릭되었음")
    }
    @IBAction func clickBtn0(_ sender:
        UIButton){
        self.dispalyLabel.text = self.dispalyLabel.text! + "0"
        print("0버튼이 클릭되었음")
    }
    @IBAction func clickBtnFullStop(_ sender:
        UIButton){
        self.dispalyLabel.text = "."
        print(".버튼이 클릭되었음")
    }
    @IBAction func clickBtnAC(_ sender:
        UIButton){
        print("AC버튼이 클릭되었음")
    }
    @IBAction func clickSwap(_ sender:
        UIButton){
        print("+/-버튼이 클릭되었음")
    }
    @IBAction func PercentBtn(_ sender:
        UIButton){
        print("%이 클릭되었음")
    }
    @IBAction func DivisionBtn(_ sender:
        UIButton){
        self.dispalyLabel.text = "/"
        print("나누기버튼이 클릭되었음")
    }
    @IBAction func Multiply(_ sender:
        UIButton){
        self.dispalyLabel.text = "X"
        print("곱하기버튼이 클릭되었음")
    }
    @IBAction func subtract(_ sender:UIButton){
        self.dispalyLabel.text = "-"
        print("빼기클릭버튼이 클릭되었음")
    }
    @IBAction func Addition(_ sender:
        UIButton){
        self.dispalyLabel.text = "+"
        print("더하기버튼이 클릭되었음")
    }
    @IBAction func Ikar(_ sender:
        UIButton){
        self.dispalyLabel.text = "="
        print("=버튼이 클릭되었음")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

