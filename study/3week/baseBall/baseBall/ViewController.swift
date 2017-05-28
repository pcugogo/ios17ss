//
//  ViewController.swift
//  baseBall
//
//  Created by 샤인 on 2017. 5. 23..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {                     //숫자를 '입력'하면 '입력값'에 들어가고 이 입력값이랑 랜덤숫자 돌린거랑 비교해서 1.자리수와 숫자가 맞으면 스트라이크
                                                             //2.숫자만 맞으면 볼 3.맞는게 없으면 아웃 /정답공개버튼/ 그리고 초기화 버튼을 누르면 싹 초기화 되고 랜덤 숫자 새로 돈다
    var inputNumber:[Int] = []
    var answer:[Int] = []
    var strikes = 0
    var balls = 0
    var outs = 0
    func initNumber(){
        answer = makeCorrectAnswer()
        print(answer)
       
        
    }
    
    
    

    
    func makeCorrectAnswer() -> [Int] {
        var result:[Int] = []
        
        for _ in 1...3 {                                             //1..3
            var randomNum = Int(arc4random_uniform(9)+1)             //랜덤으로 돌린 숫자에는 0이 나오기때문에 +1
            
            while result.contains(randomNum) {
                randomNum = Int(arc4random_uniform(9)+1)
            }
            result.append(randomNum)
        }
        
        return result
    }
    
    
    
    @IBOutlet weak var strikesLabel: UILabel!
    @IBOutlet weak var ballLabel: UILabel!
    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var firstNumLabel: UILabel!
    @IBOutlet weak var secondNumLabel: UILabel!
    @IBOutlet weak var thirdNumLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initNumber()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numBtnClick(_ sender: UIButton) {
        
        let clickNum:Int = sender.tag
        
        inputNumber.append(clickNum)
        
        switch inputNumber.count {
        case 1:
            self.firstNumLabel.text = String(clickNum)
        case 2:
            self.secondNumLabel.text = String(clickNum)
        case 3:
            self.thirdNumLabel.text = String(clickNum)
        default:
            return
        }
        
        
    }

    @IBAction func goBtnClick(_ sender: UIButton) {
        
        strikes = 0
        balls = 0
        outs = 0
        
        if self.strikesLabel.text == ""{
            strikes = 0
            balls = 0
            outs = 0
        }
        
        for x in 0...2 {
            for y in 0...2 {
                if inputNumber[x] == answer[y] {
                    if x == y {
                        strikes += 1
                    }else {
                        balls += 1
                    }
                }
            }
        }
        outs = 3 - (strikes + balls)
    
        
        self.strikesLabel.text = String(strikes)
        self.ballLabel.text = String(balls)
        self.outLabel.text = String(outs)
    }
    @IBAction func initBtnAction(_ sender: UIButton) {
        self.firstNumLabel.text = ""
        self.secondNumLabel.text = ""
        self.thirdNumLabel.text = ""
        self.strikesLabel.text = ""
        self.ballLabel.text = ""
        self.outLabel.text = ""
        strikes = 0
        balls = 0
        outs = 0
        
        inputNumber.removeAll()
        initNumber()
       
    }
    @IBAction func reEnterAction(_ sender: UIButton) {
        inputNumber.removeAll()
        self.firstNumLabel.text = ""
        self.secondNumLabel.text = ""
        self.thirdNumLabel.text = ""
    }
        
    


    
}

