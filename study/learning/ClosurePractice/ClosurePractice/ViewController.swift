//
//  ViewController.swift
//  ClosurePractice
//
//  Created by 샤인 on 2017. 6. 23..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

typealias Completion = (Bool) -> Void

class ViewController: UIViewController {

    
    
    
    let ascending = {(s1:String, s2:String) -> Bool in s1 > s2 }
    let descnding = {(s1:String, s2:String) -> Bool in s1 < s2 }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(self.pickRandomLoTToNumber())
        
        let english = ["a","b","c"]
        
        let closerFunc = {(s1:String, s2:String) -> Bool in s1 > s2}
        
        let newEngl = english.sorted(by: ascending)
        
        print("a\(newEngl)")
        
        if ascending("z","x"){
                print("없네요")
        }
        
        if !descnding("a","b"){ // descnding안에 a,b가 있어서 프린트가 안찍힌다
             print("있네요")
        }
        
        let newEnglish = english.sorted(by: closerFunc)
        
        let sorted = english.sorted(by: {s1,s2 in s1 > s2})
        let sorted1 = english.sorted (by:{ $0 < $1})
        let sorted2 = english.sorted(by: < )
        print(sorted)
        print(sorted1)
        print(sorted2)
        
        let sorted3 = english.sorted { (s1, s2) -> Bool in
            s1 > s2
        }
        print(sorted3)
        
//        let newEnglist = english.sorted() { (s1, s2) -> Bool in
//            <#code#> //여기는 컴플리션 내용을 작석 마지막파라미터임
//        } //마지막 파라미터일때 사용되기 떄문에 컴플레이션이 필요없다 sorted()에도 되고 sorted(){}에도 된다
//        
        let f = File()
        
//        f.testAction{(isSucess:Bool) in
//            if isSucess {
//                
//            }else{
//                
//            }
//        }

        f.testAction({(isSucess:Bool) in
        
            //파일클래스의 testAction의 불값을 받는다
            if isSucess{  //안쓰고 프린트(완료) 바로 찍어도됨
                
            }else{
                
            }
        
        })
        
        
//        func calculation(num1Int, num2:Int)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let alert:UIAlertController = UIAlertController.init(title: "test", message: nil, preferredStyle: .alert)
        let okAction:UIAlertAction = UIAlertAction.init(title: "OK", style: .default, handler: {(sender:UIAlertAction/* 클로져보내는사람 */) in print("OK가 눌렸습니다.")
        } )
        alert.addAction(okAction)
        self.present(alert, animated:  true, completion: {print("알러트 프레젠트 됨")}) //완료시 프린트
    }
    
    func pickRandomLoTToNumber() -> [Int] {
        var numberSet: Set<Int> = [] //리터럴이 똑같다 {()}
        while numberSet.count < 6 {
            numberSet.insert(Int(arc4random_uniform(UInt32(45)))+1)  //그냥 45로 하면 44까지만 나온다
        }
        let resultArray = numberSet.sorted(by: { (num1: Int, num2: Int) -> Bool in
            return num1 < num2 }) //sort 순서데로 분류
       
        return resultArray
    }

    
    

}

