//
//  ViewController.swift
//  CalculateHanoi
//
//  Created by 샤인 on 2017. 5. 25..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        hanoi(numbOfRing: 3, from: "A", by:"B", to: "C")
        print("\(count)번 이동")
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
       
    }



  
    var count:Int = 0
    
    func hanoi(numbOfRing: Int, from: String, by:String, to: String){
        if numbOfRing == 1{
            print("\(numbOfRing)번 원판을 \(from)에서 \(to)로 이동")
            
        }else{
            hanoi(numbOfRing: numbOfRing-1, from: from, by: to, to: by)
            print("\(numbOfRing)번 원판을 \(from)에서 \(to)로 이동")
            hanoi(numbOfRing: numbOfRing-1, from: by, by: from, to: to)
        }
        count += 1
    }
    
    
    
        
        
        
        
        
//        func calculateHanoi(withDiskNumber:Int){
//            var diskNumber = 3
//            
//            
//            
//            if diskNumber == 1{
//                //1번은 일단 C로간다
//                //체크에 1번체크
//                print("1번 원반을 A에서 C로 옮긴다.")
//                
//                return 2
//            }else if diskNumber == 2{
//                //2번이 먼저 b로가고 그다음에 c에 있던 1번이 b로간다
//                //여기는 횟수에 2번체크해주고
//                
//                print("1번 원반을 A에서 B로 옮긴다.")
//                return 3
//            }else if diskNumber == 3{
//                //3번은 c로 간다
//                //3번은 한번체크
//                return 2
//                print("1번 원반을 A에서 C로 옮긴다.")
//            }
     //print("\(diskNumber)번 원반을 \(fromPole)에서 \(topole)로 옮긴다.")
//    }
    
    


}

