//
//  ViewController.swift
//  Calculation
//
//  Created by 샤인 on 2017. 5. 10..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit
///클래스
class ViewController: UIViewController { //여기가 셀프 이안에 다 있기때문
    //아웃렛
    @IBOutlet weak var displayLabel: UILabel!
    
    //MARK: - 변수들 프로퍼티
    var tempFirstNum:Int = 0    //첫번째 누르는 번호
    var tempSecondNum:Int = 0   //두번째 누르는 번호
    var tempOperation:String = "" //기호가 들어오는 곳
    var displayNumber:String = "0" //디스플레이에 뜨게 해줄 숫자 초기화
    
    
    //첫번째 숫자인지, 두번째 숫자(연산 버튼을 누른 다음 누르는 숫자)인지 판단해서 각각에 저장하는 함수
    func addFirstNumOrSecondNum() {
        if tempOperation.isEmpty {
            //아직 첫번째 숫자
            tempFirstNum = Int(displayLabel.text!)!  //! 값이 있다고 한것 첫번쨰 찍었다
            //"!"는 이 변수가 절대 nil이 될 수 없어! 라는 의미입니다. 개발자의 보증수표랄까..
            //displayLabel.text는 절대 nil이 될 수 없고, String 값이 Int가 될 때도 String에 문자만 있을리 없어라고 이야기하는 의미입니다.
        }else{
            //두번째 숫자 두번째 찍었다
            tempSecondNum = Int(displayLabel.text!)!
        }
        
    }
//    //디스플레이에 "0"이 맨 앞자리에 있는지 판단해서 displayNumber에 숫자를 저장하는 함수
//    func addDisplayNumber(num:String) {
//        let num = ""
//        switch displayNumber {
//        case "0":
//            displayNumber = num
//        default:
//            displayNumber += num
//        }
//    }
    func addDisplayNumber(_ numberString: String){
        switch displayNumber {
        case "0":
            displayNumber = numberString
        default:
            displayNumber += numberString
        }
    }
    
    //숫자 버튼들
    
    @IBAction func numberButtonTouched(_ sender: UIButton) {
        print("\(sender.currentTitle!)번버튼이 클릭되었음")
        
       
        addDisplayNumber(sender.currentTitle!)
//        addDisplayNumber((sender.titleLabel?.text!)!) 위랑 아래 둘중 하나만 쓰면된다
        addFirstNumOrSecondNum()
        
        self.displayLabel.text = displayNumber //디스플레이 레이블에 디스플레이 넘버 찍어줘라
        
    }
   
 
    // = 버튼 복습
    @IBAction func touchUpInsideResultBtn(_ sender: UIButton) {
        var resultValue:Int = 0                                  //결과값이라는 초기값을 정해주고
        switch tempOperation {                                  //스위치 오퍼레이션을 켜고
        case "+" :
            resultValue = plus(firstNum: tempFirstNum, secondNum: tempSecondNum)    //템프오퍼레이션에 스트링으로 +가 입력되면 플러스 안의 숫자를 불러온다
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
        
        print("=버튼이 눌렸습니다")
    }
    
    ///기호를 넣어주고 기호라벨을 업데이트합니다.
    func updateTempOperation(_ operation:String){
        tempOperation = operation
        displayNumber = "0"
        displayLabel.text = tempOperation
    }
    
    
    //연산 버튼
    @IBAction func tocheUpInsidePlusBtn(_ sender:UIButton) {

        var operation:String = sender.currentTitle!
        
        switch  operation {
        case "X":
            updateTempOperation("*")
       
        default:
            updateTempOperation(operation)
           
        }
        
        
        
        tempOperation = "0"    //템프오퍼레이션은 위 =함수의 스위치 이름이다 케이스에 값을 주기 위해이다
        displayNumber = "0"
        
    }
   
    
   //초기화 버튼 복습
    @IBAction func ClearBtn(_ sender: UIButton) {
        tempFirstNum = 0
        tempSecondNum = 0
        displayNumber = "0"
        
        self.displayLabel.text = displayNumber    //위 초기값을 담아준다 디스플레이 넘버가 마침 스트링이다
    }
   //+/-버튼 복습
    
    @IBAction func tocheUpInsideFToM(_ sender: UIButton) {
        
        displayNumber = String(Int(displayNumber)! * -1) //인트형변환괄호안에서 디스플레이 넘버를 -1 곱해주고 이값을 다시(또) 스트링으로 형변환해서
        self.displayLabel.text = displayNumber           //이 곳에 담아준다

        
     
    }
  
   //%버튼 복습
    
    @IBAction func touchUpInsidePercent(_ sender: UIButton) {
        displayNumber = String(Int(displayNumber)! * 1 / 100) //위의 방법과 동일하게 했다
        self.displayLabel.text = displayNumber
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

