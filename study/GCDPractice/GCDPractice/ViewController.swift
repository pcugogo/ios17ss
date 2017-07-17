//
//  ViewController.swift
//  GCDPractice
//
//  Created by 샤인 on 2017. 7. 14..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testlb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let q1 = DispatchQueue(label: "com.closerExample.q1") //디스패치라는 스레드를 만들어서 쓴다
        DispatchQueue.global().async {
            for n in 1..<100{
                print(n)
        }
            
        }
        
        DispatchQueue.global().async {
            for n in 100...200{
                print(n)
            }
        }
//        q1.async {
//            for n in 100...200{
//                print(n)
//            }
//        }
        //순서데로냐 아니냐는 직렬 병렬로 주로 구분하고 싱크는 주로 어싱크를 쓴다
//        sync 비동기 async 동기
        let q2 = DispatchQueue(label: "com.closerExample.q2", qos: .userInitiated)//userInitiated때문에 q2가 우선순위가 높아서 q2가 먼저 실행된다
        q2.async {
            for n in 1000...1100{
                print(n)
            }
        }
        let q3 = DispatchQueue(label: "com.closerExample.q3", qos: .background, attributes: [.initiallyInactive, .concurrent])
        q3.async {
            for n in 5000...5100{
                print(n)
            }
            print("end")
            DispatchQueue.main.async { //이 밖에 있으면 레이블에 값이 5100까지 간다음에 뜬다
                self.testlb.text = "end Thraed" //이게 제일 먼저 시작
            }
            let workItem = DispatchWorkItem{
                print("workItem")
            }
            q3.async(execute: workItem)
            
        }
        q3.activate()
        //initiallyInactive를 써서 여기서 멀 실행해야된다
        
     
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

