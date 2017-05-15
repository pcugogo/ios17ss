//
//  ViewController.swift
//  Calculation
//
//  Created by 샤인 on 2017. 5. 10..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit
///클래스
class ViewController: UIViewController {
    ///////아울렛
    @IBOutlet weak var displayLabel: UILabel!
    
    //////MARK: - 변수들 프로퍼티
    var tempFirstNum:Int = 0
    var tempSecondNum:Int = 0
    var tempOperation:String = ""
    var displayNumber:String = "0"
    
    
 
    
    //숫자 버튼들
    
    @IBAction func clickBtn1(_ sender: UIButton) {
        
        if displayNumber == "0"{
            displayNumber = "1"
        }else{
            displayNumber += "1"
        }
        
        if tempOperation.isEmpty {
        
            tempFirstNum = Int(displayNumber)!
        }else{
            tempSecondNum = Int(displayNumber)!
        }
        self.displayLabel.text = displayNumber
        print("1버튼이 클릭되었음")
    }
    @IBAction func clickBtn2(_ sender:
        UIButton){
        
        if displayNumber == "0"{
            displayNumber = "2"
        }else{
            displayNumber += "2"
        }
        
        if tempOperation.isEmpty {
            
            tempFirstNum = Int(displayNumber)!
        }else{
            tempSecondNum = Int(displayNumber)!
        }
        self.displayLabel.text = displayNumber
        print("2버튼이 클릭되었음")
    }
    @IBAction func clickBtn3(_ sender:
        UIButton){
        if displayNumber == "0"{
            displayNumber = "3"
        }else{
            displayNumber += "3"
        }
        
        if tempOperation.isEmpty {
            
            tempFirstNum = Int(displayNumber)!
        }else{
            tempSecondNum = Int(displayNumber)!
        }
        self.displayLabel.text = displayNumber
        print("3버튼이 클릭되었음")
    }
    @IBAction func clickBtn4(_ sender:
        UIButton){
        if displayNumber == "0"{
            displayNumber = "4"
        }else{
            displayNumber += "4"
        }
        
        if tempOperation.isEmpty {
            
            tempFirstNum = Int(displayNumber)!
        }else{
            tempSecondNum = Int(displayNumber)!
        }
        self.displayLabel.text = displayNumber
        print("4버튼이 클릭되었음")
    }
    @IBAction func clickBtn5(_ sender:
        UIButton){
        if displayNumber == "0"{
            displayNumber = "5"
        }else{
            displayNumber += "5"
        }
        
        if tempOperation.isEmpty {
            
            tempFirstNum = Int(displayNumber)!
        }else{
            tempSecondNum = Int(displayNumber)!
        }
        self.displayLabel.text = displayNumber
        print("5버튼이 클릭되었음")
    }
    @IBAction func clickBtn6(_ sender:
        UIButton){
        if displayNumber == "0"{
            displayNumber = "6"
        }else{
            displayNumber += "6"
        }
       
        if tempOperation.isEmpty {
            
            tempFirstNum = Int(displayNumber)!
        }else{
            tempSecondNum = Int(displayNumber)!
        }
        self.displayLabel.text = displayNumber
        print("6버튼이 클릭되었음")
    }
    @IBAction func clickBtn7(_ sender:
        UIButton){
        if displayNumber == "0"{
            displayNumber = "7"
        }else{
            displayNumber += "7"
        }
        if tempOperation.isEmpty {
            
            tempFirstNum = Int(displayNumber)!
        }else{
            tempSecondNum = Int(displayNumber)!
        }
        self.displayLabel.text = displayNumber
        print("7버튼이 클릭되었음")
        
    }
    @IBAction func clickBtn8(_ sender:
        UIButton){
        if displayNumber == "0"{
            displayNumber = "8"
        }else{
            displayNumber += "8"
        }
        
        if tempOperation.isEmpty {
            
            tempFirstNum = Int(displayNumber)!
        }else{
            tempSecondNum = Int(displayNumber)!
        }
        self.displayLabel.text = displayNumber
    }
    @IBAction func clickBtn9(_ sender:
        UIButton){
        if displayNumber == "0"{
            displayNumber = "9"
        }else{
            displayNumber += "9"
        }
        
        if tempOperation.isEmpty {
            
            tempFirstNum = Int(displayNumber)!
        }else{
            tempSecondNum = Int(displayNumber)!
        }
        self.displayLabel.text = displayNumber
        print("9버튼이 클릭되었음")
    }
    @IBAction func clickBtn0(_ sender:UIButton){
        if displayNumber == "0"{
            displayNumber = "0"
        }else{
            displayNumber += "0"
        }
        
        if tempOperation.isEmpty {
            
            tempFirstNum = Int(displayNumber)!
        }else{
            tempSecondNum = Int(displayNumber)!
        }
        self.displayLabel.text = displayNumber
        print("0버튼이 클릭되었음")
    }
    //첫번째 숫자인지, 두번째 숫자(연산 버튼을 누른 다음 누르는 숫자)인지 판단해서 각각에 저장하는 함수
    @IBAction func clickBtnFullStop(_ sender:
        UIButton){
        self.displayLabel.text = "."
        if tempOperation.isEmpty {
            //아직 첫번째 숫자
            tempFirstNum = Int(displayLabel.text!)!  //! 값이 있다고 한것
            //"!"는 이 변수가 절대 nil이 될 수 없어! 라는 의미입니다. 개발자의 보증수표랄까..
            //displayLabel.text는 절대 nil이 될 수 없고, String 값이 Int가 될 때도 String에 문자만 있을리 없어라고 이야기하는 의미입니다.
        }else{
            //두번째 숫자
            tempSecondNum = Int(displayLabel.text!)!
        }
       
    }
    
    
    //플러스 버튼
    @IBAction func tocheUpInsidePlusBtn(_ sender:UIButton) {
        tempOperation = "+"
        displayNumber = "0"
    }
    //빼기버튼
    @IBAction func tocheUpInsideMinus(_ sender:UIButton) {
        tempOperation = "-"
        displayNumber = "0"
    }
   //곱하기버튼
    @IBAction func tocheUpInsideMultiply(_ sender: UIButton) {
        tempOperation = "*"
        displayNumber = "0"
    }
    //나누기버튼
    
    @IBAction func tocheUpInsideDivision(_ sender: UIButton) {
        tempOperation = "-"
        displayNumber = "0"
    }
    
   //초기화 버튼 복습
    @IBAction func ClearBtn(_ sender: UIButton) {
        tempFirstNum = 0
        tempSecondNum = 0
        displayNumber = "0"
        
        self.displayLabel.text = displayNumber
    }
   //+/-버튼 복습
    
    @IBAction func tocheUpInsideFToM(_ sender: UIButton) {
        
        displayNumber = String(Int(displayNumber)! * -1)
        self.displayLabel.text = displayNumber

        
     
    }
  
   //%버튼 복습
    
    @IBAction func touchUpInsidePercent(_ sender: UIButton) {
        displayNumber = String(Int(displayNumber)! * 1 / 100)
        self.displayLabel.text = displayNumber
    }
    
    
   // = 버튼 복습
    @IBAction func touchUpInsideResultBtn(_ sender: UIButton) {
        var resultValue:Int = 0
        switch  tempOperation {
        case "+" :
            resultValue = plus(firstNum: tempFirstNum, secondNum: tempSecondNum)
        case "-" :
            resultValue = minus(firstNum: tempFirstNum, secondNum: tempSecondNum)
        case "*" :
            resultValue = multiply(firstNum: tempFirstNum, secondNum: tempSecondNum)
        case "/" :
            resultValue = division(firstNum: tempFirstNum, secondNum: tempSecondNum)
        default:
            resultValue = 0
        }
        displayLabel.text = "\(resultValue)"
        
        tempFirstNum = 0
        tempSecondNum = 0
        tempOperation = ""
        displayNumber = "0"
    }
    

    //더하기 함수
    func plus(firstNum:Int, secondNum:Int) -> Int{
        return firstNum + secondNum
    }
    //빼기 함수
    func minus(firstNum:Int, secondNum:Int) -> Int{
        return firstNum - secondNum
    }
    //곱하기 함수
    func multiply(firstNum:Int, secondNum:Int) -> Int{
        return firstNum * secondNum
    }
    //나누기 함수
    func division(firstNum:Int, secondNum:Int) -> Int{
        return firstNum / secondNum
    }

    
   //라이프싸이클
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

