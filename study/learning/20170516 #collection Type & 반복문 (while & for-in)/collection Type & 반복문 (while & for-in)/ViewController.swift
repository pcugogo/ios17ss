//
//  ViewController.swift
//  collection Type & 반복문 (while & for-in)
//
//  Created by 샤인 on 2017. 5. 17..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(googoodan(dan: 2))
        let lottoNumbers:[Int] = findLotto()
        print(lottoNumbers)
        print(measureValue(number: 7))
        print(isPrimeNumberOf(number: 7))
        
    }

    //구구단
    func googoodan(dan:Int) {
        
        var gob:Int = 1 //1단부터
        
        while gob < 10 { //9단까지 곱초기값이 1이여서 0은 들어가지않는다 gob(1) < 10 같은것
            print("\(dan) * \(gob) = \(dan * gob)") // (단) * (곱) =(스트링) (단 * 곱)
            gob += 1 //곱에 1씩 더하는 것을 9번 까지 반복한다 위에서 1단 결과 실행후 곱에 +1 다시 위로가서 2단 실행
            
        }
    }
    
    //max 45, 숫자 6개 뽑기 중복 제거
    func findLotto() -> [Int] {
        var lottoNumbers:[Int] = []
        var count = 0
        while count < 6 {       //6까지 반복
            let randomNum:UInt32 = arc4random_uniform(45) //45까지 랜덤숫자 랜덤숫자 구하는 코드
            
            if randomNum != 0 && !lottoNumbers.contains(Int(randomNum)){ //랜덤넘버가 0이아니고,
                lottoNumbers.append(Int(randomNum))                      //로또 넘버에 랜덤넘버가 포함이 안된경우
                count += 1                                               //로또넘버에 추가를 해주고
            }                                                            //카운트를 하나 올려준다
        }
        return lottoNumbers
    }
    // 약수 구하기
    func measureValue(number num:Int) -> [Int] { //함수명을 생각한다 타입을 생각한다
        var measures:[Int] = []                //약수 공식을 떠올린다 약수의 의미를 파악하고
        //약수가 되는 조건이 무엇인지 파악한다
        for index in 1...num {                //어떤 루프를 쓸 건지 파악한다 ex) for in
            if num % index == 0 {             //for in 사이의 글은 자유롭게 변수가 아니여도 그냥 포인문 이름으로 붙여줄
                measures.append(index)        //수 있다
            }                                 //예를 들어 넘에 값이 7이 들어갈경우 index에 1...7이 들어간다
        }                                     //다시 num에 1...7 를 나누어 그중 0이 되는 것만
        return measures                       //걸러서 musures배열에 추가해준다 어펜드()안에 넣은 값이 추가된다
    }
    
    // MARK: 소수 판별기 소수는 약수가 1과 자신 숫자가 있다 예를 들어 7이면 1과 7로만 나누어짐
    func isPrimeNumberOf(number num:Int) -> Bool {
        var result:Bool = false //초기 값을 펄스로 해준다
        
        if measureValue(number: num).count <= 2 { //위의 함수를 가져와서 카운트해서 약수가 2개거나 2개보다 낮으면
            result = true                         //트루
        }
        
        return result       //리설트 초기값이 false이기때문에 false 상태
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

