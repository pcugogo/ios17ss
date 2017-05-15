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
    //아웃렛
    @IBOutlet weak var displayLabel: UILabel!  //레이블이랑 연결된 곳인데, self가 여기 인것 같다 밑에 self.displayLabel.text가 여기서 나오는 것 같다
    
    //MARK: - 변수들 프로퍼티
    var tempFirstNum:Int = 0    //첫번째 누르는 번호
    var tempSecondNum:Int = 0   //두번째 누르는 번호
    var tempOperation:String = "" //기호가 들어오는 곳
    var displayNumber:String = "0" //디스플레이에 뜨게 해줄 숫자 초기화
    
    
    //첫번째 숫자인지, 두번째 숫자(연산 버튼을 누른 다음 누르는 숫자)인지 판단해서 각각에 저장하는 함수
    func addFirstNumOrSecondNum(number num:String) {
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
    
    
    
    //숫자 버튼들
    
    @IBAction func clickBtn1(_ sender: UIButton) {
        
        if displayNumber == "0"{   //디스플레이에 있는 숫자가 0이면
            displayNumber = "1"     //디스플레이 숫자를 1로 해주고
        }else{                      //그렇지 않으면
            displayNumber += "1"   // 1을 그 숫자(스트링)에 붙여준다
        }
        
        if tempOperation.isEmpty {  //임시작업 변수에 비우는 언어를 붙인거같다 먼지 잘모르겠다
        
            tempFirstNum = Int(displayNumber)! // !는 닐값이 아니라고 표시해주는것 이것도 잘모르겠다
        }else{
            tempSecondNum = Int(displayNumber)!
        }
        self.displayLabel.text = displayNumber //디스플레이 레이블에 디스플레이 넘버 찍어줘라
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
    
    
    //플러스 버튼
    @IBAction func tocheUpInsidePlusBtn(_ sender:UIButton) {
        tempOperation = "+"    //템프오퍼레이션은 위 =함수의 스위치 이름이다 케이스에 값을 주기 위해이다
        
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
        tempOperation = "/"
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

